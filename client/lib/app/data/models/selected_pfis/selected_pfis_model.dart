
  import 'package:flutter/foundation.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';
  
  part 'selected_pfis_model.freezed.dart';
  part 'selected_pfis_model.g.dart';
  
  
  @freezed
  class SelectedPfisModel with _$SelectedPfisModel {
  
    const factory SelectedPfisModel({@JsonKey(name: 'uri') String? uri, 
@JsonKey(name: 'name') String? name, 
}) = _SelectedPfisModel;
  
    factory SelectedPfisModel.fromJson(Map<String, Object?> json)
        => _$SelectedPfisModelFromJson(json);
  }
  
  
  