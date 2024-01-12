/*
 * Copyright (c) 2018-2023 REV Robotics
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of REV Robotics nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#pragma once

#include <stdint.h>

#include <wpi/deprecated.h>

namespace rev {

/**
 * @deprecated Use CANSparkLowLevel instead
 */
class WPI_DEPRECATED("Use CANSparkLowLevel instead") CANSparkMaxLowLevel {
public:
    /**
     * @deprecated Use CANSparkLowLevel::MotorType instead
     */
    enum class WPI_DEPRECATED("Use CANSparkLowLevel::MotorType") MotorType {
        kBrushed = 0,
        kBrushless = 1
    };

    /**
     * @deprecated Use CANSparkLowLevel::ControlType instead
     */
    enum class WPI_DEPRECATED("Use CANSparkLowLevel::ControlType instead")
        ControlType {
            kDutyCycle = 0,
            kVelocity = 1,
            kVoltage = 2,
            kPosition = 3,
            kSmartMotion = 4,
            kCurrent = 5,
            kSmartVelocity = 6
        };

    /**
     * @deprecated Use CANSparkLowLevel::ParameterStatus instead
     */
    enum class WPI_DEPRECATED("Use CANSparkLowLevel::ParameterStatus instead")
        ParameterStatus {
            kOK = 0,
            kInvalidID = 1,
            kMismatchType = 2,
            kAccessMode = 3,
            kInvalid = 4,
            kNotImplementedDeprecated = 5,
        };

    /**
     * @deprecated Use CANSparkLowLevel::PeriodicFrame instead
     */
    enum class WPI_DEPRECATED("Use CANSparkLowLevel::PeriodicFrame instead")
        PeriodicFrame {
            kStatus0 = 0,
            kStatus1 = 1,
            kStatus2 = 2,
            kStatus3 = 3,
            kStatus4 = 4,
            kStatus5 = 5,
            kStatus6 = 6,
        };

    /**
     * @deprecated Use CANSparkLowLevel::PeriodicStatus0 instead
     */
    struct PeriodicStatus0 {
        double appliedOutput;
        uint16_t faults;
        uint16_t stickyFaults;
        MotorType motorType;
        bool isFollower;
        uint8_t lock;
        uint8_t roboRIO;
        uint8_t isInverted;
        uint64_t timestamp;
    };

    /**
     * @deprecated Use CANSparkLowLevel::PeriodicStatus1 instead
     */
    struct PeriodicStatus1 {
        double sensorVelocity;
        uint8_t motorTemperature;
        double busVoltage;
        double outputCurrent;
        uint64_t timestamp;
    };

    /**
     * @deprecated Use CANSparkLowLevel::PeriodicStatus2 instead
     */
    struct PeriodicStatus2 {
        double sensorPosition;
        double iAccum;
        uint64_t timestamp;
    };

    /**
     * @deprecated Use CANSparkLowLevel::TelemetryID instead
     */
    enum class TelemetryID {
        kBusVoltage = 0,
        kOutputCurrent,
        kVelocity,
        kPosition,
        kIAccum,
        kAppliedOutput,
        kMotorTemp,
        kFaults,
        kStickyFaults,
        kAnalogVoltage,
        kAnalogPosition,
        kAnalogVelocity,
        kAltEncPosition,
        kAltEncVelocity,
        kTotalStreams
    };

    /**
     * @deprecated Use CANSparkLowLevel::TelemetryMessage instead
     */
    struct TelemetryMessage {
        TelemetryID id;
        float value = 0;
        uint64_t timestamp = 0;
        const char* name;
        const char* units;
        float lowerBnd;
        float upperBnd;
    };

    /**
     * Closes the SPARK MAX Controller
     */
    virtual ~CANSparkMaxLowLevel() {}

private:
    CANSparkMaxLowLevel() {}
};

}  // namespace rev
