/*
 * Copyright (c) 2021-2023 REV Robotics
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

#include "rev/REVLibError.h"
#include "rev/SparkMaxAnalogSensor.h"

namespace rev {

class CANSparkBase;

class SparkAnalogSensor : public SparkMaxAnalogSensor {
    // Friend to allow construction
    friend class CANSparkBase;

public:
    /**
     * Analog sensors have the ability to either be absolute or relative.
     * By default, CANSparkBase::GetAnalog() will return an absolute analog
     * sensor, but it can also be configured to be a relative sensor instead.
     */
    enum class Mode { kAbsolute = 0, kRelative = 1 };

    SparkAnalogSensor(SparkAnalogSensor&&) = default;

    SparkAnalogSensor& operator=(SparkAnalogSensor&&) = default;

    SparkAnalogSensor(const SparkAnalogSensor& rhs) = default;

    ~SparkAnalogSensor() override = default;

private:
    explicit SparkAnalogSensor(CANSparkBase& device, Mode mode);
};

}  // namespace rev
