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

#include "rev/REVLibError.h"
#include "rev/SparkMaxLimitSwitch.h"

namespace rev {

class CANSparkBase;

class SparkLimitSwitch : public SparkMaxLimitSwitch {
    // Friend to allow construction
    friend class CANSparkBase;

public:
    /**
     * Represents whether the circuit is open or closed when the switch is not
     * being pressed
     */
    enum class Type { kNormallyOpen = 0, kNormallyClosed = 1 };

    SparkLimitSwitch(SparkLimitSwitch&&) = default;

    SparkLimitSwitch& operator=(SparkLimitSwitch&&) = default;

    SparkLimitSwitch(const SparkLimitSwitch&) = default;

    ~SparkLimitSwitch() override = default;

private:
    explicit SparkLimitSwitch(CANSparkBase& device, Direction direction,
                              Type switchType);
};

}  // namespace rev
