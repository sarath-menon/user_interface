// my_app.cpp
#include <Mahi/Gui.hpp>
#include <Mahi/Util.hpp>
using namespace mahi::gui;
using namespace mahi::util;

/////////////////////////////////////////////////////////////////////////////////////

// Fastdds Callback

#include "mocap_quadcopterPubSubTypes.h"
#include "mocap_quadcopterSubscriber.h"
#include <fastdds/dds/subscriber/DataReader.hpp>
#include <fastdds/dds/subscriber/SampleInfo.hpp>
#include <unistd.h>

namespace subscriber {

void mocap_quadcopterSubscriber::SubListener::on_data_available(
    eprosima::fastdds::dds::DataReader *reader) {
  // Take data
  mocap_quadcopter st;
  eprosima::fastdds::dds::SampleInfo info;

  if (reader->take_next_sample(&st, &info) == ReturnCode_t::RETCODE_OK) {
    if (info.valid_data) {
      // Print your structure data here.
      ++samples;
      std::cout << "\nSample received, count=" << samples << std::endl;
      new_data = true;

      std::cout << "Index=" << st.index() << std::endl;

      std::cout << "Object Name:" << st.object_name() << std::endl;

      object_name = st.object_name();
      frame_number = st.index();

      position[0] = st.position().at(0);
      position[1] = st.position().at(1);
      position[2] = st.position().at(2);

      velocity[0] = st.velocity().at(0);
      velocity[1] = st.velocity().at(1);
      velocity[2] = st.velocity().at(2);

      orientation[0] = st.orientation_quaternion().at(0);
      orientation[1] = st.orientation_quaternion().at(1);
      orientation[2] = st.orientation_quaternion().at(2);
      orientation[3] = st.orientation_quaternion().at(3);

      latency = st.delay();

      // Sleep for 500 microseconds
      usleep(1000);
    }
  }
}
} // namespace subscriber

////////////////////////////////////////////////////////////////////////////

// utility structure for realtime plot
struct RollingBuffer {
  float Span;
  ImVector<ImVec2> Data;
  RollingBuffer() {
    Span = 5.0f;
    Data.reserve(2000);
  }
  void AddPoint(float x, float y) {
    float xmod = fmodf(x, Span);
    if (!Data.empty() && xmod < Data.back().x)
      Data.shrink(0);
    Data.push_back(ImVec2(xmod, y));
  }
};

// Inherit from Application
class MyApp : public Application {

public:
  // 1920x1080 px window
  MyApp() : Application(1080, 720, "Cool Visualizer") { mysub.init(); }

  // Initialize fastdds subscriber
  subscriber::mocap_quadcopterSubscriber mysub;

  // Override update (called once per frame)
  void update() override {
    // App logic and/or ImGui code goes here
    static RollingBuffer x_vel, y_vel, z_vel;
    ImGui::Begin("Cool Plots");

    if (ImGui::CollapsingHeader("Line Plots")) {
      ImGui::BulletText("Linear Velocity");

      static float t = 0;
      t += ImGui::GetIO().DeltaTime;
      //   std::cout << "Velocity X Axis:" << subscriber::velocity[0] / 100;

      ///////////////////////////////////////////////////////////////
      // Set data
      std::cout << "x_vel:" << subscriber::velocity[0] / 1000 << std::endl;
      x_vel.AddPoint(t, subscriber::velocity[0] / 1000);
      y_vel.AddPoint(t, subscriber::velocity[1] / 1000);
      z_vel.AddPoint(t, subscriber::velocity[2] / 1000);

      ///////////////////////////////////////////////////////////////

      static float history = 5.0f;
      ImGui::SliderFloat("History", &history, 1, 30, "%.1f s");
      x_vel.Span = history;
      y_vel.Span = history;

      static ImPlotAxisFlags rt_axis = ImPlotAxisFlags_NoTickLabels;

      // ImGui::BulletText("X Axis");
      ImPlot::SetNextPlotLimitsX(0, history, ImGuiCond_Always);
      ImPlot::SetNextPlotLimitsY(-4, 4, ImGuiCond_Always);
      ImPlot::PushColormap(ImPlotColormap_Pastel);

      if (ImPlot::BeginPlot("X Axis Velocity", "time", "velocity",
                            ImVec2(-1, 200))) {
        // X Axis Velocity
        ImPlot::PlotLine("meters / sec", &x_vel.Data[0].x, &x_vel.Data[0].y,
                         x_vel.Data.size(), 0, 2 * sizeof(float));

        ImPlot::SetNextMarkerStyle(ImPlotMarker_Circle);
        ImPlot::EndPlot();
      }

        // ImGui::BulletText("Y Axis Velocity");
        ImPlot::SetNextPlotLimitsX(0, history, ImGuiCond_Always);
        ImPlot::SetNextPlotLimitsY(-4, 4, ImGuiCond_Always);
        ImPlot::PushColormap(ImPlotColormap_Pastel);

        if (ImPlot::BeginPlot("Y Axis Velocity", "time", "velocity",
                              ImVec2(-1, 200))) {

          // Y Axis Velocity
          ImPlot::PlotLine("meters / sec", &y_vel.Data[0].x,
          &y_vel.Data[0].y,
                           y_vel.Data.size(), 0, 2 * sizeof(float));

          ImPlot::SetNextMarkerStyle(ImPlotMarker_Circle);
          ImPlot::EndPlot();
        }

        // ImGui::BulletText("Z Axis Velocity");
        ImPlot::SetNextPlotLimitsX(0, history, ImGuiCond_Always);
        ImPlot::SetNextPlotLimitsY(-4, 4, ImGuiCond_Always);
        ImPlot::PushColormap(ImPlotColormap_Pastel);

        if (ImPlot::BeginPlot("Z Axis Velocity", "time", "velocity",
                              ImVec2(-1, 200))) {

          // Y Axis Velocity
          ImPlot::PlotLine("meters / sec", &z_vel.Data[0].x,
          &z_vel.Data[0].y,
                           z_vel.Data.size(), 0, 2 * sizeof(float));

          ImPlot::SetNextMarkerStyle(ImPlotMarker_Circle);
          ImPlot::EndPlot();
        }

        
    }
    ImGui::End();
  }
};

int main() {

  MyApp app;
  app.run();
  return 0;
}