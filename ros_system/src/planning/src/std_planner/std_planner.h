/******************************************************************************
 * Copyright 2019 The Zibet Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

#ifndef MODULES_PLANNING_PLANNER_STD_PLANNER_H_
#define MODULES_PLANNING_PLANNER_STD_PLANNER_H_

#include <fstream>
#include <string>
#include <vector>
#include "ytthdmap_msgs/HdmapYtt.h"
#include "locationsim_msgs/LOCATIONSIM.h"
#include "planning_msgs/ADCTrajectory.h"
#include "planning_msgs/PlanningDebug.h"
#include "core/StdPlanningCore.h"


/**
 * @namespace zibet::planning
 * @brief zibet::planning
 */

namespace planning {

/**
 * @class StdPlanner
 * @brief StdPlanner is a derived class of Planner.
 *        It reads a recorded trajectory from a trajectory file and
 *        outputs proper segment of the trajectory according to vehicle
 * position.
 */
class StdPlanner {
 public:
  /**
   * @brief Constructor
   */
  StdPlanner();

  /**
   * @brief Destructor
   */
  ~StdPlanner() ;

  //bool Init(const PlanningConfig& config) override;

  /**
   * @brief Override function Plan in parent class Planner.
   * @param planning_init_point The trajectory point where planning starts.
   * @param frame Current planning frame.
   * @return OK if planning succeeds; error otherwise.
   */
    bool Plan();
    void ReadTrajectoryFile(const std::string& filename);
    void GetLocalizationInfo(const locationsim_msgs::LOCATIONSIM& localization);
    void GetHdmapInfo(const ytthdmap_msgs::HdmapYtt& map);
    void GetPlanningTrajectory(planning_msgs::ADCTrajectory& trajectory);
    void SetLocation(const locationsim_msgs::LOCATIONSIM& msgs);
    void SetHdmap(const ytthdmap_msgs::HdmapYtt& msgs);
    void PrintDebugInfo(planning_msgs::PlanningDebug& pdbg);

    locationsim_msgs::LOCATIONSIM location_;
    ytthdmap_msgs::HdmapYtt hdmap_;
    planning_msgs::ADCTrajectory trajectory_;
    planning_msgs::PlanningDebug pdbg;
  private:
    tag_RTM_StdPlanningCore_type * planning_core_;
};

}  // namespace planning


#endif  // MODULES_PLANNING_PLANNER_STD_PLANNER_H_
