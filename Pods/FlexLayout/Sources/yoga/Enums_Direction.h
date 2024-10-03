/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

// @generated by enums.py
// clang-format off
#pragma once

#include <cstdint>
#include "YGEnums.h"
#include "Enums_YogaEnums.h"

namespace facebook::yoga {

enum class Direction : uint8_t {
  Inherit = YGDirectionInherit,
  LTR = YGDirectionLTR,
  RTL = YGDirectionRTL,
};

template <>
constexpr int32_t ordinalCount<Direction>() {
  return 3;
}

constexpr Direction scopedEnum(YGDirection unscoped) {
  return static_cast<Direction>(unscoped);
}

constexpr YGDirection unscopedEnum(Direction scoped) {
  return static_cast<YGDirection>(scoped);
}

inline const char* toString(Direction e) {
  return YGDirectionToString(unscopedEnum(e));
}

} // namespace facebook::yoga
