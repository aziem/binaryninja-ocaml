open Ctypes

open Typedefs

module Bindings (T : Cstubs_structs.TYPE with type 'a typ = 'a typ) (F : Cstubs.FOREIGN) =
struct

  module E = Ffi_types.Enums(T)
  open E
  open F
  let plugin_init_function = T.typedef (T.static_funptr T.(T.void @-> returning T.bool)) "BNCorePluginInitFunction"
  let plugin_dep_function = T.typedef (T.static_funptr T.(T.void @-> returning T.void)) "BNCorePluginDependencyFunction"

  let plugin_action = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> returning T.void)
  let plugin_is_valid = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> returning bool)

  let plugin_action_for_range = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.void)
  let plugin_is_valid_for_range = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.bool)

  let plugin_action_for_address = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.uint64_t @-> returning T.void)
  let plugin_is_valid_for_address = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.uint64_t @-> returning T.bool)

  let plugin_action_for_function = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.ptr E.bn_function @-> returning T.void) 
  let plugin_is_valid_for_function = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.ptr E.bn_function @-> returning T.bool) 

  let bn_get_build_id = F.foreign "BNGetBuildId" (T.void @-> returning T.uint32_t)

  let bn_shutdown = F.foreign "BNShutdown" (T.void @-> returning T.void)

  let bn_get_version_string = F.foreign "BNGetVersionString" (T.void @-> returning T.string)

  let bn_is_license_validated = F.foreign "BNIsLicenseValidated" (T.void @-> returning T.bool)

  let bnget_product = F.foreign "BNGetProduct" (T.void @-> returning (T.string))

  let bnget_product_type = F.foreign "BNGetProductType" (T.void @-> returning (T.string))

  let bnget_license_count = F.foreign  "BNGetLicenseCount" (T.void @-> returning (T.size_t))

  let bn_init_core_plugins = F.foreign "BNInitCorePlugins" (T.void @-> returning T.void)

  let bn_init_user_plugins = F.foreign "BNInitUserPlugins" (T.void @-> returning T.void)

  let bninit_repo_plugins = F.foreign  "BNInitRepoPlugins" (T.void @-> returning (T.void ))

  let bnget_install_directory = F.foreign  "BNGetInstallDirectory" (T.void @-> returning (T.string ))

  let bn_get_bundled_plugin_directory = F.foreign "BNGetBundledPluginDirectory" (T.void @-> returning T.string)

  let bn_set_bundled_plugin_directory = F.foreign "BNSetBundledPluginDirectory" (T.string @-> returning T.void)

  let bnget_user_directory = F.foreign  "BNGetUserDirectory" (T.void @-> returning (T.string ))
  let bn_get_user_plugin_directory = F.foreign "BNGetUserPluginDirectory" (T.void @-> returning T.string)

  let bnget_repositories_directory = F.foreign  "BNGetRepositoriesDirectory" (T.void @-> returning (T.string ))

  let bnsave_last_run = F.foreign  "BNSaveLastRun" (T.void @-> returning (T.void ))
  let bn_log = F.foreign "BNLog" (E.bn_log_level @-> T.string @-> returning T.void)

  let bn_log_debug = F.foreign "BNLogDebug" (T.string @-> returning T.void)


  let bn_alloc_string = F.foreign "BNAllocString" F.( T.string  @-> returning T.string)

  let bn_free_string = F.foreign "BNFreeString" F.( T.string  @-> returning T.void)

  let bnfree_string_list = F.foreign "BNFreeStringList" (T.ptr (T.string) @-> T.size_t  @-> returning (T.void ))

  let bn_get_path_relative_to_bundled_plugin_directory = F.foreign "BNGetPathRelativeToBundledPluginDirectory" F.(T.string @-> returning T.string)

  let bn_get_path_relative_to_user_plugin_directory = F.foreign "BNGetPathRelativeToUserPluginDirectory" F.( T.string @-> returning T.string)

  let bn_set_current_plugin_load_order =  F.foreign "BNSetCurrentPluginLoadOrder" F.( E.bn_plugin_load_order  @-> returning T.void)

  let bn_add_required_plugin_dependency =  F.foreign "BNAddRequiredPluginDependency" F.( T.string  @-> returning T.void)

  let bn_add_optional_plugin_dependency = F.foreign "BNAddOptionalPluginDependency" F.( T.string @-> returning T.void) 

  let bn_log = F.foreign "BNLog" F.( E.bn_log_level @-> T.string @-> returning T.void)

  let bn_log_debug = F.foreign "BNLogDebug" F.(T.string  @-> returning T.void)

  let bn_log_info = F.foreign "BNLogInfo" F.( T.string  @-> returning T.void)


  let bn_log_warn = F.foreign "BNLogWarn" F.( T.string  @-> returning T.void)

  let bn_log_error = F.foreign "BNLogError" F.( T.string @-> returning T.void)

  let bn_log_alert = F.foreign "BNLogAlert" F.( T.string  @-> returning T.void)

  let bn_register_log_listener = F.foreign "BNRegisterLogListener" F.( ptr E.bn_log_listener @-> returning T.void)

  let bn_unregister_log_listener = F.foreign "BNUnregisterLogListener" F.( ptr E.bn_log_listener @-> returning T.void)

  let bn_update_log_listeners = F.foreign "BNUpdateLogListeners" F.( T.void @-> returning T.void)

  let bn_log_to_stdout = F.foreign "BNLogToStdout" F.( E.bn_log_level  @-> returning T.void)

  let bn_log_to_stderr = F.foreign "BNLogToStderr" F.( E.bn_log_level  @-> returning T.void)

  let bn_log_to_file = F.foreign "BNLogToFile" F.( E.bn_log_level @-> T.string @-> T.bool @-> returning T.bool) 
  let bn_close_logs = F.foreign "BNCloseLogs" F.(T.void @-> returning T.void)

  let bn_get_scripting_provider_list = F.foreign "BNGetScriptingProviderList" F.(T.ptr T.size_t @-> returning (T.ptr (T.ptr E.bn_scripting_provider)))

  let bn_get_scripting_provider_name = F.foreign "BNGetScriptingProviderName" F.(T.ptr E.bn_scripting_provider @-> returning T.string)

  let bn_create_file_metadata = F.foreign "BNCreateFileMetadata" F.( T.void @-> returning (T.ptr E.bn_file_metadata )) 
  let bn_write_view_data = F.foreign "BNWriteViewData" F.( T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning T.size_t)
  let bn_get_default_architecture = F.foreign "BNGetDefaultArchitecture" F.( T.ptr bn_binary_view @-> returning (T.ptr bn_architecture))
  let bn_get_default_platform = F.foreign "BNGetDefaultPlatform" F.( T.ptr bn_binary_view @-> returning (T.ptr bn_platform))
  let bn_create_binary_dataview_from_filename = F.foreign "BNCreateBinaryDataViewFromFilename" F.(T.ptr bn_file_metadata @-> T.string @-> returning (T.ptr bn_binary_view))
  let bn_get_binary_view_types = F.foreign "BNGetBinaryViewTypes" F.( T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_binary_viewtype)))
  let bn_get_binary_view_typename = F.foreign "BNGetBinaryViewTypeName" F.( T.ptr bn_binary_viewtype  @-> returning T.string )
  let bn_get_architecture_name = F.foreign "BNGetArchitectureName" F.( T.ptr bn_architecture @-> returning T.string)
  let bn_update_analysis = F.foreign "BNUpdateAnalysis" F.( T.ptr bn_binary_view @-> returning T.void)
  let bn_get_analysis_progress = F.foreign "BNGetAnalysisProgress" F.( T.ptr bn_binary_view @-> returning E.bn_analysis_progress)

  let bn_register_plugin_command = F.foreign "BNRegisterPluginCommand" F.( T.string @-> T.string @-> Ctypes.static_funptr plugin_action @-> Ctypes.static_funptr plugin_is_valid @-> T.ptr T.void @-> returning T.void)

  let bn_register_plugin_command_for_range = F.foreign "BNRegisterPluginCommandForRange" F.(T.string @-> T.string @-> Ctypes.static_funptr plugin_action_for_range @-> Ctypes.static_funptr plugin_is_valid_for_range @-> T.ptr T.void @-> returning T.void)

  let bn_register_plugin_command_for_address = F.foreign "BNRegisterPluginCommandForAddress" F.( T.string @-> T.string @-> Ctypes.static_funptr plugin_action_for_address @-> Ctypes.static_funptr plugin_is_valid_for_address @-> T.ptr T.void @-> returning T.void)

  let bn_register_plugin_command_for_function = F.foreign "BNRegisterPluginCommandForFunction" F.(T.string @-> T.string @-> Ctypes.static_funptr plugin_action_for_function @-> Ctypes.static_funptr plugin_is_valid_for_function @-> T.ptr T.void @-> returning T.void)


  let bn_create_platform = F.foreign "BNCreatePlatform" F.(T.ptr bn_architecture @-> T.string @-> returning (T.ptr bn_platform))
  let bn_get_platform_name = F.foreign "BNGetPlatformName" F.( T.ptr bn_platform  @-> returning T.string)
  let bn_get_platform_architecture = F.foreign "BNGetPlatformArchitecture" F.(T.ptr bn_platform @-> returning (T.ptr bn_architecture))

  let bn_get_platform_list = F.foreign "BNGetPlatformList" (T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_platform)))
  let bn_get_platform_list_by_architecture = F.foreign "BNGetPlatformListByArchitecture" (T.ptr bn_architecture @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_platform)))
  let bn_get_platform_list_by_os = F.foreign "BNGetPlatformListByOS" (T.string @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_platform)))
  let bn_get_platform_list_by_os_and_architecture = F.foreign "BNGetPlatformListByOSAndArchitecture" (T.string @-> T.ptr bn_architecture @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_platform)))

  let bn_get_platform_by_name = F.foreign "BNGetPlatformByName" (T.string @-> returning (T.ptr bn_platform))


  (* Function Stuff *)
  let bn_get_function_platform = F.foreign "BNGetFunctionPlatform" (T.ptr bn_function @-> returning (T.ptr bn_platform))

  let bn_get_function_architecture = F.foreign "BNGetFunctionArchitecture" F.( T.ptr bn_function @-> returning (T.ptr bn_architecture))
  let bn_get_function_start = F.foreign "BNGetFunctionStart" F.( T.ptr bn_function @-> returning T.uint64_t)
  let bn_get_function_symbol = F.foreign "BNGetFunctionSymbol" F.( T.ptr bn_function @-> returning (T.ptr bn_symbol))
  let bn_was_function_automatically_discovered = F.foreign "BNWasFunctionAutomaticallyDiscovered" F.( T.ptr bn_function @-> returning T.bool)
  let bn_can_function_return = F.foreign "BNCanFunctionReturn" F.( T.ptr bn_function @-> returning T.bool)

  let bn_get_function_basic_block_list = F.foreign "BNGetFunctionBasicBlockList" F.( T.ptr bn_function @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_basicblock)))


  let bn_create_symbol = F.foreign "BNCreateSymbol" F.( E.bn_symbol_type @-> T.string @-> T.string  @-> T.string @-> T.uint64_t @-> returning (T.ptr bn_symbol))
  let bn_new_symbol_reference = F.foreign "BNNewSymbolReference" F.( T.ptr bn_symbol @-> returning (T.ptr bn_symbol))
  let bn_get_symbol_type = F.foreign "BNGetSymbolType" F.( T.ptr bn_symbol @-> returning (E.bn_symbol_type))
  let bn_get_symbol_shortname = F.foreign "BNGetSymbolShortName" F.( T.ptr bn_symbol @-> returning T.string)
  let bn_get_symbol_fullname = F.foreign "BNGetSymbolFullName" F.( T.ptr bn_symbol @-> returning T.string)
  let bn_get_symbol_rawname = F.foreign "BNGetSymbolRawName" F.( T.ptr bn_symbol @-> returning T.string)
  let bn_get_symbol_address = F.foreign "BNGetSymbolAddress" F.( T.ptr bn_symbol  @-> returning T.uint64_t)
  let bn_is_symbol_autodefined = F.foreign "BNIsSymbolAutoDefined" F.( T.ptr bn_symbol @-> returning T.bool)
  let bn_set_symbol_autodefined = F.foreign "BNSetSymbolAutoDefined" F.( T.ptr bn_symbol @-> T.bool @-> returning T.void)
  let bn_get_symbol_by_address = F.foreign "BNGetSymbolByAddress" F.( T.ptr bn_binary_view @->  T.uint64_t @-> returning (T.ptr bn_symbol))
  let bn_get_symbol_by_rawname = F.foreign "BNGetSymbolByRawName" F.( T.ptr bn_binary_view @->  T.string @-> returning (T.ptr bn_symbol))
  let bn_create_function_graph = F.foreign "BNCreateFunctionGraph" F.(T.ptr bn_function @-> returning (T.ptr bn_functiongraph))
  let bn_new_function_graph_reference = F.foreign "BNNewFunctionGraphReference" F.(T.ptr bn_functiongraph @-> returning (T.ptr bn_functiongraph))

  let bn_free_function_graph = F.foreign "BNFreeFunctionGraph" F.(T.ptr bn_functiongraph @-> returning T.void)

  let bn_get_function_for_function_graph = F.foreign "BNGetFunctionForFunctionGraph" F.(T.ptr bn_functiongraph @-> returning (T.ptr bn_function))

  let bn_get_horizontal_function_graph_block_margin = F.foreign "BNGetHorizontalFunctionGraphBlockMargin" F.( T.ptr bn_functiongraph  @-> returning T.size_t)

  let bn_get_vertical_function_graph_block_margin = F.foreign "BNGetVerticalFunctionGraphBlockMargin" F.( T.ptr bn_functiongraph @-> returning T.size_t)

  let bn_set_function_graph_block_margins = F.foreign "BNSetFunctionGraphBlockMargins" F.(T.ptr bn_functiongraph @-> T.size_t @-> T.size_t @-> returning T.void)

  let bn_start_function_graph_layout = F.foreign "BNStartFunctionGraphLayout"
      F.( T.ptr bn_functiongraph @-> E.bn_function_graph_type @-> returning T.void)

  let bn_get_function_graph_blocks = F.foreign  "BNGetFunctionGraphBlocks"
      F.(T.ptr bn_functiongraph @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_functiongraphblock )))

  let bnexecute_worker_process = F.foreign  "BNExecuteWorkerProcess"
      (T.string @-> T.ptr T.string_opt @-> T.ptr bn_data_buffer @-> T.ptr ( T.ptr T.char  )@-> T.ptr ( T.ptr T.char ) @-> T.bool @-> T.bool @-> returning (T.bool))

  let bnregister_object_destruction_callbacks = F.foreign  "BNRegisterObjectDestructionCallbacks" (T.ptr bnobject_destruction_callbacks   @-> returning (T.void ))
  let bnunregister_object_destruction_callbacks = F.foreign  "BNUnregisterObjectDestructionCallbacks" (T.ptr bnobject_destruction_callbacks   @-> returning (T.void ))

  let bnget_unique_identifier_string = F.foreign  "BNGetUniqueIdentifierString" (T.void @-> returning (T.string ))

  let bncreate_temporary_file = F.foreign  "BNCreateTemporaryFile" (T.void @-> returning (T.ptr bn_temporaryfile))

  let bncreate_temporary_file_with_contents = F.foreign  "BNCreateTemporaryFileWithContents" (T.ptr bn_data_buffer @-> returning (T.ptr bn_temporaryfile))
  let bnnew_temporary_file_reference = F.foreign  "BNNewTemporaryFileReference" (T.ptr bn_temporaryfile   @-> returning (T.ptr bn_temporaryfile))

  let bnfree_temporary_file = F.foreign  "BNFreeTemporaryFile" (T.ptr bn_temporaryfile @-> returning (T.void ))

  let bnget_temporary_file_path = F.foreign  "BNGetTemporaryFilePath" (T.ptr bn_temporaryfile   @-> returning (T.string))

  let bnget_temporary_file_contents = F.foreign  "BNGetTemporaryFileContents"
      (T.ptr bn_temporaryfile @-> returning (T.ptr bn_data_buffer))

  let bncreate_data_buffer = F.foreign  "BNCreateDataBuffer" (T.ptr T.void @-> T.size_t  @-> returning (T.ptr bn_data_buffer))

  let bnduplicate_data_buffer = F.foreign  "BNDuplicateDataBuffer" (T.ptr bn_data_buffer @-> returning (T.ptr bn_data_buffer))

  let bnfree_data_buffer = F.foreign  "BNFreeDataBuffer" (T.ptr bn_data_buffer @-> returning (T.void ))
  let bnget_data_buffer_contents = F.foreign  "BNGetDataBufferContents" (T.ptr bn_data_buffer   @-> returning (T.ptr T.void))
  let bnget_data_buffer_contents_at = F.foreign  "BNGetDataBufferContentsAt" (T.ptr bn_data_buffer @-> T.size_t @-> returning (T.ptr T.void  ))
  let bnget_data_buffer_length = F.foreign  "BNGetDataBufferLength" (T.ptr bn_data_buffer @-> returning (T.size_t ))
  let bnget_data_buffer_slice = F.foreign  "BNGetDataBufferSlice" (T.ptr bn_data_buffer   @-> T.size_t @-> T.size_t  @-> returning (T.ptr bn_data_buffer))
  let bnset_data_buffer_length = F.foreign  "BNSetDataBufferLength" (T.ptr bn_data_buffer @-> T.size_t @-> returning (T.void ))
  let bnclear_data_buffer = F.foreign  "BNClearDataBuffer" (T.ptr bn_data_buffer  @-> returning (T.void ))
  let bnset_data_buffer_contents = F.foreign  "BNSetDataBufferContents" (T.ptr bn_data_buffer   @-> T.ptr T.void   @-> T.size_t @-> returning (T.void ))
  let bnassign_data_buffer = F.foreign  "BNAssignDataBuffer" (T.ptr bn_data_buffer   @-> T.ptr bn_data_buffer   @-> returning (T.void ))
  let bnappend_data_buffer = F.foreign  "BNAppendDataBuffer" (T.ptr bn_data_buffer   @-> T.ptr bn_data_buffer   @-> returning (T.void ))
  let bnappend_data_buffer_contents = F.foreign  "BNAppendDataBufferContents" (T.ptr bn_data_buffer   @-> T.ptr T.void   @-> T.size_t @-> returning (T.void ))
  let bnget_data_buffer_byte = F.foreign  "BNGetDataBufferByte" (T.ptr bn_data_buffer   @-> T.size_t @-> returning (T.uint8_t ))
  let bnset_data_buffer_byte = F.foreign  "BNSetDataBufferByte" (T.ptr bn_data_buffer   @-> T.size_t @-> T.uint8_t  @-> returning (T.void ))
  let bndata_buffer_to_escaped_string = F.foreign  "BNDataBufferToEscapedString" (T.ptr bn_data_buffer   @-> returning (T.string  ))
  let bndecode_escaped_string = F.foreign  "BNDecodeEscapedString" (T.string   @-> returning (T.ptr bn_data_buffer  ))
  let bndata_buffer_to_base64 = F.foreign  "BNDataBufferToBase64" (T.ptr bn_data_buffer   @-> returning (T.string  ))
  let bndecode_base64 = F.foreign  "BNDecodeBase64" (T.string   @-> returning (T.ptr bn_data_buffer))
  let bnzlib_compress = F.foreign  "BNZlibCompress" (T.ptr bn_data_buffer   @-> returning (T.ptr bn_data_buffer))
  let bnzlib_decompress = F.foreign  "BNZlibDecompress" (T.ptr bn_data_buffer   @-> returning (T.ptr bn_data_buffer))

  let bncreate_file_metadata = F.foreign  "BNCreateFileMetadata" (T.void @-> returning (T.ptr bn_file_metadata  ))
  let bnnew_file_reference = F.foreign  "BNNewFileReference" (T.ptr bn_file_metadata   @-> returning (T.ptr bn_file_metadata  ))
  let bnfree_file_metadata = F.foreign  "BNFreeFileMetadata" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnclose_file = F.foreign  "BNCloseFile" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnset_file_metadata_navigation_handler = F.foreign  "BNSetFileMetadataNavigationHandler" (T.ptr bn_file_metadata   @-> T.ptr E.bn_navigation_handler   @-> returning (T.void ))
  let bnis_file_modified = F.foreign  "BNIsFileModified" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bnis_analysis_changed = F.foreign  "BNIsAnalysisChanged" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bnmark_file_modified = F.foreign  "BNMarkFileModified" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnmark_file_saved = F.foreign  "BNMarkFileSaved" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnis_backed_by_database = F.foreign  "BNIsBackedByDatabase" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bncreate_database = F.foreign  "BNCreateDatabase" (T.ptr bn_binary_view @-> T.string @-> returning (T.size_t ))

  let bncreate_database_with_progress = F.foreign  "BNCreateDatabaseWithProgress"
      (T.ptr bn_binary_view @-> T.string @-> T.ptr T.void @-> (T.static_funptr T.(T.ptr T.void @-> T.size_t @-> T.size_t @-> returning T.void)) @-> 
       returning (T.bool ))

  let bnopen_existing_database = F.foreign  "BNOpenExistingDatabase" (T.ptr bn_file_metadata @-> T.string @-> returning (T.ptr bn_binary_view  ))
  let bnopen_existing_database_with_progress = F.foreign  "BNOpenExistingDatabaseWithProgress" (T.ptr bn_file_metadata   @-> T.string   @-> T.ptr T.void   @-> (T.static_funptr T.(T.ptr T.void @-> T.size_t @-> T.size_t @-> returning T.void))  @-> returning (T.ptr bn_binary_view  ))
  let bnsave_auto_snapshot = F.foreign  "BNSaveAutoSnapshot" (T.ptr bn_binary_view @-> returning (T.bool))
  let bnsave_auto_snapshot_with_progress = F.foreign  "BNSaveAutoSnapshotWithProgress"
      (T.ptr bn_binary_view @-> T.ptr T.void @-> (T.static_funptr T.(T.ptr T.void @-> T.size_t @-> T.size_t @-> returning T.void))  @-> returning (T.bool ))
  let bnget_filename = F.foreign  "BNGetFilename" (T.ptr bn_file_metadata   @-> returning (T.string  ))
  let bnset_filename = F.foreign  "BNSetFilename" (T.ptr bn_file_metadata   @-> T.string   @-> returning (T.void ))
  let bnregister_undo_action_type = F.foreign  "BNRegisterUndoActionType"
      (T.string   @-> T.ptr T.void   @-> (T.static_funptr T.(T.ptr T.void @-> T.string @-> T.ptr bnundo_action @-> returning T.bool)) @-> returning (T.void ))
  let bnbegin_undo_actions = F.foreign  "BNBeginUndoActions" (T.ptr bn_file_metadata @-> returning (T.void ))
  let bnadd_undo_action = F.foreign  "BNAddUndoAction" (T.ptr bn_binary_view   @-> T.string   @-> T.ptr bnundo_action   @-> returning (T.void ))
  let bncommit_undo_actions = F.foreign  "BNCommitUndoActions" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnundo = F.foreign  "BNUndo" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bnredo = F.foreign  "BNRedo" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bnget_current_view = F.foreign  "BNGetCurrentView" (T.ptr bn_file_metadata   @-> returning (T.string))
  let bnget_current_offset = F.foreign  "BNGetCurrentOffset" (T.ptr bn_file_metadata   @-> returning (T.uint64_t ))
  let bnnavigate = F.foreign  "BNNavigate" (T.ptr bn_file_metadata @-> T.string @-> T.uint64_t @-> returning (T.size_t ))
  let bnget_file_view_of_type = F.foreign  "BNGetFileViewOfType" (T.ptr bn_file_metadata   @-> T.string   @-> returning (T.ptr bn_binary_view  ))



  let bnnew_view_reference = F.foreign  "BNNewViewReference" (T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_view  ))
  let bnfree_binary_view = F.foreign  "BNFreeBinaryView" (T.ptr bn_binary_view   @-> returning (T.void ))
  let bnget_file_for_view = F.foreign  "BNGetFileForView" (T.ptr bn_binary_view   @-> returning (T.ptr bn_file_metadata  ))
  let bnget_view_type = F.foreign  "BNGetViewType" (T.ptr bn_binary_view   @-> returning (T.string  ))
  let bnget_parent_view = F.foreign  "BNGetParentView" (T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_view  ))
  let bnread_view_data = F.foreign  "BNReadViewData" (T.ptr bn_binary_view @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning (T.size_t))
  let bnread_view_buffer = F.foreign  "BNReadViewBuffer" (T.ptr bn_binary_view   @-> T.uint64_t  @-> T.size_t  @-> returning (T.ptr bn_data_buffer))
  let bnwrite_view_data = F.foreign  "BNWriteViewData" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning (T.size_t))
  let bnwrite_view_buffer = F.foreign  "BNWriteViewBuffer" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bn_data_buffer @-> returning (T.size_t))
  let bninsert_view_data = F.foreign  "BNInsertViewData" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning (T.size_t))
  let bninsert_view_buffer = F.foreign  "BNInsertViewBuffer" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bn_data_buffer @-> returning (T.size_t))
  let bnremove_view_data = F.foreign  "BNRemoveViewData" (T.ptr bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning (T.size_t ))
  let bnnotify_data_written = F.foreign  "BNNotifyDataWritten" (T.ptr bn_binary_view   @-> T.uint64_t  @-> T.size_t  @-> returning (T.void ))
  let bnnotify_data_inserted = F.foreign  "BNNotifyDataInserted" (T.ptr bn_binary_view   @-> T.uint64_t  @-> T.size_t  @-> returning (T.void ))
  let bnnotify_data_removed = F.foreign  "BNNotifyDataRemoved" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> returning (T.void ))
  let bnget_modification = F.foreign  "BNGetModification" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (E.bn_modification_status ))
  let bnget_modification_array = F.foreign  "BNGetModificationArray" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bn_modification_status @-> T.size_t @-> returning (T.size_t ))
  let bnis_valid_offset = F.foreign  "BNIsValidOffset" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnis_offset_readable = F.foreign  "BNIsOffsetReadable" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnis_offset_writable = F.foreign  "BNIsOffsetWritable" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnis_offset_executable = F.foreign  "BNIsOffsetExecutable" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnis_offset_backed_by_file = F.foreign  "BNIsOffsetBackedByFile" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnget_next_valid_offset = F.foreign  "BNGetNextValidOffset" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_start_offset = F.foreign  "BNGetStartOffset" (T.ptr bn_binary_view   @-> returning (T.uint64_t ))
  let bnget_end_offset = F.foreign  "BNGetEndOffset" (T.ptr bn_binary_view   @-> returning (T.uint64_t ))
  let bnget_view_length = F.foreign  "BNGetViewLength" (T.ptr bn_binary_view   @-> returning (T.uint64_t ))
  let bnget_entry_point = F.foreign  "BNGetEntryPoint" (T.ptr bn_binary_view   @-> returning (T.uint64_t ))
  let bnget_default_architecture = F.foreign  "BNGetDefaultArchitecture" (T.ptr bn_binary_view   @-> returning (T.ptr bn_architecture  ))
  let bnset_default_architecture = F.foreign  "BNSetDefaultArchitecture" (T.ptr bn_binary_view   @-> T.ptr bn_architecture   @-> returning (T.void ))
  let bnget_default_platform = F.foreign  "BNGetDefaultPlatform" (T.ptr bn_binary_view   @-> returning (T.ptr bn_platform  ))
  let bnset_default_platform = F.foreign  "BNSetDefaultPlatform" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @-> returning (T.void ))

  let bnget_default_endianness = F.foreign  "BNGetDefaultEndianness" (T.ptr bn_binary_view   @-> returning (E.bn_endianness))
  let bnget_view_address_size = F.foreign  "BNGetViewAddressSize" (T.ptr bn_binary_view @-> returning (T.size_t ))
  let bnis_view_modified = F.foreign  "BNIsViewModified" ( T.ptr bn_binary_view   @-> returning (T.bool ))
  let bnis_executable_view = F.foreign  "BNIsExecutableView" ( T.ptr bn_binary_view   @-> returning (T.bool ))
  let bnsave_to_file = F.foreign  "BNSaveToFile" ( T.ptr bn_binary_view   @->  T.ptr bn_file_accessor   @-> returning (T.bool ))
  let bnsave_to_filename = F.foreign  "BNSaveToFilename" ( T.ptr bn_binary_view   @->  T.string   @-> returning (T.bool ))
  let bnregister_data_notification = F.foreign  "BNRegisterDataNotification" (T.ptr bn_binary_view   @-> T.ptr E.bn_binary_data_notification   @-> returning (T.void ))
  let bnunregister_data_notification = F.foreign  "BNUnregisterDataNotification" (T.ptr bn_binary_view   @-> T.ptr E.bn_binary_data_notification   @-> returning (T.void ))

  let bnis_invert_branch_patch_available = F.foreign  "BNIsInvertBranchPatchAvailable" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnis_skip_and_return_zero_patch_available = F.foreign  "BNIsSkipAndReturnZeroPatchAvailable" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnis_skip_and_return_value_patch_available = F.foreign  "BNIsSkipAndReturnValuePatchAvailable" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnconvert_to_nop = F.foreign  "BNConvertToNop" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnalways_branch = F.foreign  "BNAlwaysBranch" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bninvert_branch = F.foreign  "BNInvertBranch" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnskip_and_return_value = F.foreign  "BNSkipAndReturnValue" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @->  uint64_t  @-> returning (T.bool ))
  let bnget_instruction_length = F.foreign  "BNGetInstructionLength" (T.ptr bn_binary_view @-> T.ptr bn_architecture @-> T.uint64_t @-> returning (T.size_t )) 
  let bnfind_next_data = F.foreign  "BNFindNextData" ( T.ptr bn_binary_view   @->  uint64_t  @->  T.ptr bn_data_buffer   @->  T.ptr uint64_t   @->  bnfindflag  @-> returning (T.bool ))

  let bnadd_auto_segment = F.foreign  "BNAddAutoSegment" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @->T.uint64_t  @->T.uint64_t  @->T.uint32_t  @-> returning (T.void ))
  let bnremove_auto_segment = F.foreign  "BNRemoveAutoSegment" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> returning (T.void ))
  let bnadd_user_segment = F.foreign  "BNAddUserSegment" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @->T.uint64_t  @->T.uint64_t  @->T.uint32_t  @-> returning (T.void ))
  let bnremove_user_segment = F.foreign  "BNRemoveUserSegment" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> returning (T.void ))
  let bnget_segments = F.foreign  "BNGetSegments" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnsegment  ))
  let bnfree_segment_list = F.foreign  "BNFreeSegmentList" (T.ptr E.bnsegment   @-> returning (T.void ))
  let bnget_segment_at = F.foreign  "BNGetSegmentAt" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bnsegment @-> returning (T.bool ))

  let bnget_address_for_data_offset = F.foreign  "BNGetAddressForDataOffset" ( T.ptr ( bn_binary_view )  @->   T.uint64_t  @->  T.ptr ( T.uint64_t )  @-> returning (T.bool ))
  let bnadd_auto_section = F.foreign  "BNAddAutoSection" (T.ptr bn_binary_view   @-> T.string   @->T.uint64_t  @->T.uint64_t  @-> T.string   @->T.uint64_t  @->T.uint64_t  @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_auto_section = F.foreign  "BNRemoveAutoSection" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.void ))
  let bnadd_user_section = F.foreign  "BNAddUserSection" (T.ptr bn_binary_view   @-> T.string   @->T.uint64_t  @->T.uint64_t  @-> T.string   @->T.uint64_t  @->T.uint64_t  @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_user_section = F.foreign  "BNRemoveUserSection" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.void ))
  let bnget_sections = F.foreign  "BNGetSections" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnsection  ))
  let bnget_sections_at = F.foreign  "BNGetSectionsAt" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bnsection  ))
  let bnfree_section_list = F.foreign  "BNFreeSectionList" (T.ptr E.bnsection   @-> T.size_t  @-> returning (T.void ))
  let bnget_section_by_name = F.foreign  "BNGetSectionByName" ( T.ptr bn_binary_view   @->  T.string   @->  T.ptr bnsection   @-> returning (T.bool ))
  let bnfree_section = F.foreign  "BNFreeSection" (T.ptr bnsection   @-> returning (T.void ))
  let bnget_unique_section_names = F.foreign  "BNGetUniqueSectionNames" (T.ptr bn_binary_view   @-> T.ptr T.string    @-> T.size_t  @-> returning (T.ptr T.string))
  let bnget_allocated_ranges = F.foreign  "BNGetAllocatedRanges" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnaddress_range))
  let bnfree_address_ranges = F.foreign  "BNFreeAddressRanges" (T.ptr E.bnaddress_range   @-> returning (T.void ))
  let bncreate_binary_data_view = F.foreign  "BNCreateBinaryDataView" (T.ptr bn_file_metadata   @-> returning (T.ptr bn_binary_view  ))
  let bncreate_binary_data_view_from_buffer = F.foreign  "BNCreateBinaryDataViewFromBuffer" (T.ptr bn_file_metadata   @-> T.ptr bn_data_buffer   @-> returning (T.ptr bn_binary_view  ))
  let bncreate_binary_data_view_from_data = F.foreign  "BNCreateBinaryDataViewFromData" (T.ptr bn_file_metadata   @-> T.ptr T.void   @-> T.size_t  @-> returning (T.ptr bn_binary_view  ))
  let bncreate_binary_data_view_from_filename = F.foreign  "BNCreateBinaryDataViewFromFilename" (T.ptr bn_file_metadata   @-> T.string   @-> returning (T.ptr bn_binary_view  ))
  let bncreate_binary_data_view_from_file = F.foreign  "BNCreateBinaryDataViewFromFile" (T.ptr bn_file_metadata   @-> T.ptr E.bn_file_accessor   @-> returning (T.ptr bn_binary_view  ))
  let bncreate_custom_binary_view = F.foreign  "BNCreateCustomBinaryView" (T.string   @-> T.ptr bn_file_metadata   @-> T.ptr bn_binary_view   @-> T.ptr E.bn_custom_binary_view   @-> returning (T.ptr bn_binary_view  ))
  let bnget_binary_view_type_by_name = F.foreign  "BNGetBinaryViewTypeByName" (T.string   @-> returning (T.ptr bn_binary_viewtype  ))
  let bnget_binary_view_types = F.foreign  "BNGetBinaryViewTypes" (T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_binary_viewtype  )  ))
  let bnget_binary_view_types_for_data = F.foreign  "BNGetBinaryViewTypesForData" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_binary_viewtype  )  ))
  let bnfree_binary_view_type_list = F.foreign  "BNFreeBinaryViewTypeList" (T.ptr (T.ptr bn_binary_viewtype) @-> returning (T.void ))
  let bnget_binary_view_type_name = F.foreign  "BNGetBinaryViewTypeName" (T.ptr bn_binary_viewtype   @-> returning (T.string  ))
  let bnget_binary_view_type_long_name = F.foreign  "BNGetBinaryViewTypeLongName" (T.ptr bn_binary_viewtype   @-> returning (T.string  ))
  let bncreate_binary_view_of_type = F.foreign  "BNCreateBinaryViewOfType" (T.ptr bn_binary_viewtype   @-> T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_view  ))
  let bnis_binary_view_type_valid_for_data = F.foreign  "BNIsBinaryViewTypeValidForData" ( T.ptr bn_binary_viewtype   @->  T.ptr bn_binary_view   @-> returning (T.bool ))
  let bnregister_binary_view_type = F.foreign  "BNRegisterBinaryViewType" (T.string   @-> T.string   @-> T.ptr E.bn_custom_binary_view_type   @-> returning (T.ptr bn_binary_viewtype  ))
  let bnregister_architecture_for_view_type = F.foreign  "BNRegisterArchitectureForViewType" (T.ptr bn_binary_viewtype   @->T.uint32_t  @->  E.bn_endianness  @-> T.ptr bn_architecture   @-> returning (T.void ))
  let bnget_architecture_for_view_type = F.foreign  "BNGetArchitectureForViewType" (T.ptr bn_binary_viewtype   @->T.uint32_t  @->  E.bn_endianness  @-> returning (T.ptr bn_architecture  ))
  let bnregister_platform_for_view_type = F.foreign  "BNRegisterPlatformForViewType" (T.ptr bn_binary_viewtype   @->T.uint32_t  @-> T.ptr bn_architecture   @-> T.ptr bn_platform   @-> returning (T.void ))
  let bnregister_default_platform_for_view_type = F.foreign  "BNRegisterDefaultPlatformForViewType" (T.ptr bn_binary_viewtype   @-> T.ptr bn_architecture   @-> T.ptr bn_platform   @-> returning (T.void ))
  let bnget_platform_for_view_type = F.foreign  "BNGetPlatformForViewType" (T.ptr bn_binary_viewtype   @->T.uint32_t  @-> T.ptr bn_architecture   @-> returning (T.ptr bn_platform  ))
  let bncreate_binary_reader = F.foreign  "BNCreateBinaryReader" (T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_reader  ))
  let bnfree_binary_reader = F.foreign  "BNFreeBinaryReader" (T.ptr bn_binary_reader   @-> returning (T.void ))
  let bnget_binary_reader_endianness = F.foreign  "BNGetBinaryReaderEndianness" (T.ptr bn_binary_reader   @-> returning ( E.bn_endianness ))
  let bnset_binary_reader_endianness = F.foreign  "BNSetBinaryReaderEndianness" (T.ptr bn_binary_reader   @->  E.bn_endianness  @-> returning (T.void ))
  let bnread_data = F.foreign  "BNReadData" ( T.ptr bn_binary_reader   @->  T.ptr T.void   @->  T.size_t  @-> returning (T.bool ))
  let bnread8 = F.foreign  "BNRead8" ( T.ptr bn_binary_reader   @->  T.ptr T.uint8_t   @-> returning (T.bool ))
  let bnread16 = F.foreign  "BNRead16" ( T.ptr bn_binary_reader   @->  T.ptr T.uint16_t   @-> returning (T.bool ))
  let bnread32 = F.foreign  "BNRead32" ( T.ptr bn_binary_reader   @->  T.ptr T.uint32_t   @-> returning (T.bool ))
  let bnread64 = F.foreign  "BNRead64" ( T.ptr bn_binary_reader   @->  T.ptr T.uint64_t   @-> returning (T.bool ))
  let bnread_le16 = F.foreign  "BNReadLE16" ( T.ptr bn_binary_reader   @->  T.ptr T.uint16_t   @-> returning (T.bool ))
  let bnread_le32 = F.foreign  "BNReadLE32" ( T.ptr bn_binary_reader   @->  T.ptr T.uint32_t   @-> returning (T.bool ))
  let bnread_le64 = F.foreign  "BNReadLE64" ( T.ptr bn_binary_reader   @->  T.ptr T.uint64_t   @-> returning (T.bool ))
  let bnread_be16 = F.foreign  "BNReadBE16" ( T.ptr bn_binary_reader   @->  T.ptr T.uint16_t   @-> returning (T.bool ))
  let bnread_be32 = F.foreign  "BNReadBE32" ( T.ptr bn_binary_reader   @->  T.ptr T.uint32_t   @-> returning (T.bool ))
  let bnread_be64 = F.foreign  "BNReadBE64" ( T.ptr bn_binary_reader   @->  T.ptr T.uint64_t   @-> returning (T.bool ))

  let bnget_reader_position = F.foreign  "BNGetReaderPosition" (T.ptr bn_binary_reader   @-> returning (T.uint64_t ))
  let bnseek_binary_reader = F.foreign  "BNSeekBinaryReader" (T.ptr bn_binary_reader   @->T.uint64_t  @-> returning (T.void ))
  let bnseek_binary_reader_relative = F.foreign  "BNSeekBinaryReaderRelative" (T.ptr bn_binary_reader   @-> T.int64_t  @-> returning (T.void ))
  let bnis_end_of_file = F.foreign  "BNIsEndOfFile" ( T.ptr bn_binary_reader   @-> returning (T.bool ))
  let bncreate_binary_writer = F.foreign  "BNCreateBinaryWriter" (T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_writer  ))
  let bnfree_binary_writer = F.foreign  "BNFreeBinaryWriter" (T.ptr bn_binary_writer   @-> returning (T.void ))
  let bnget_binary_writer_endianness = F.foreign  "BNGetBinaryWriterEndianness" (T.ptr bn_binary_writer   @-> returning ( E.bn_endianness ))
  let bnset_binary_writer_endianness = F.foreign  "BNSetBinaryWriterEndianness" (T.ptr bn_binary_writer   @->  E.bn_endianness  @-> returning (T.void ))
  let bnwrite_data = F.foreign  "BNWriteData" ( T.ptr bn_binary_writer   @->  T.ptr T.void   @->  T.size_t  @-> returning (T.bool ))
  let bnwrite8 = F.foreign  "BNWrite8" ( T.ptr bn_binary_writer   @->  T.uint8_t  @-> returning (T.bool ))
  let bnwrite16 = F.foreign  "BNWrite16" ( T.ptr bn_binary_writer   @->  T.uint16_t  @-> returning (T.bool ))
  let bnwrite32 = F.foreign  "BNWrite32" ( T.ptr bn_binary_writer   @->  T.uint32_t  @-> returning (T.bool ))
  let bnwrite64 = F.foreign  "BNWrite64" ( T.ptr bn_binary_writer   @->  T.uint64_t  @-> returning (T.bool ))
  let bnwrite_le16 = F.foreign  "BNWriteLE16" ( T.ptr bn_binary_writer   @->  T.uint16_t  @-> returning (T.bool ))
  let bnwrite_le32 = F.foreign  "BNWriteLE32" ( T.ptr bn_binary_writer   @->  T.uint32_t  @-> returning (T.bool ))
  let bnwrite_le64 = F.foreign  "BNWriteLE64" ( T.ptr bn_binary_writer   @->  T.uint64_t  @-> returning (T.bool ))
  let bnwrite_be16 = F.foreign  "BNWriteBE16" ( T.ptr bn_binary_writer   @->  T.uint16_t  @-> returning (T.bool ))
  let bnwrite_be32 = F.foreign  "BNWriteBE32" ( T.ptr bn_binary_writer   @->  T.uint32_t  @-> returning (T.bool ))
  let bnwrite_be64 = F.foreign  "BNWriteBE64" ( T.ptr bn_binary_writer   @->  T.uint64_t  @-> returning (T.bool ))

  let bnget_writer_position = F.foreign  "BNGetWriterPosition" (T.ptr bn_binary_writer   @-> returning (T.uint64_t ))
  let bnseek_binary_writer = F.foreign  "BNSeekBinaryWriter" (T.ptr bn_binary_writer   @->T.uint64_t  @-> returning (T.void ))
  let bnseek_binary_writer_relative = F.foreign  "BNSeekBinaryWriterRelative" (T.ptr bn_binary_writer   @-> T.int64_t  @-> returning (T.void ))
  let bnget_transform_by_name = F.foreign  "BNGetTransformByName" (T.string   @-> returning (T.ptr bn_transform  ))
  let bnget_transform_type_list = F.foreign  "BNGetTransformTypeList" (T.ptr T.size_t @-> returning (T.ptr ( T.ptr bn_transform  )  ))
  let bnfree_transform_type_list = F.foreign  "BNFreeTransformTypeList" (T.ptr ( T.ptr bn_transform  )   @-> returning (T.void ))
  let bnregister_transform_type = F.foreign  "BNRegisterTransformType" ( E.bn_transform_type  @-> T.string   @-> T.string   @-> T.string   @-> T.ptr E.bncustom_transform   @-> returning (T.ptr bn_transform  ))
  let bnget_transform_type = F.foreign  "BNGetTransformType" (T.ptr bn_transform   @-> returning ( E.bn_transform_type ))
  let bnget_transform_name = F.foreign  "BNGetTransformName" (T.ptr bn_transform   @-> returning (T.string  ))
  let bnget_transform_long_name = F.foreign  "BNGetTransformLongName" (T.ptr bn_transform   @-> returning (T.string  ))
  let bnget_transform_group = F.foreign  "BNGetTransformGroup" (T.ptr bn_transform   @-> returning (T.string  ))
  let bnget_transform_parameter_list = F.foreign  "BNGetTransformParameterList" (T.ptr bn_transform   @-> T.ptr T.size_t   @-> returning (T.ptr E.bn_transform_parameter_info  ))
  let bnfree_transform_parameter_list = F.foreign  "BNFreeTransformParameterList" (T.ptr E.bn_transform_parameter_info   @-> T.size_t  @-> returning (T.void ))
  let bndecode = F.foreign  "BNDecode" ( T.ptr bn_transform   @->  T.ptr bn_data_buffer   @->  T.ptr bn_data_buffer   @->  T.ptr bntransform_parameter   @->  T.size_t  @-> returning (T.bool ))
  let bnencode = F.foreign  "BNEncode" ( T.ptr bn_transform   @->  T.ptr bn_data_buffer   @->  T.ptr bn_data_buffer   @->  T.ptr bntransform_parameter   @->  T.size_t  @-> returning (T.bool ))
  let bnget_architecture_by_name = F.foreign  "BNGetArchitectureByName" (T.string   @-> returning (T.ptr bn_architecture  ))
  let bnget_architecture_list = F.foreign  "BNGetArchitectureList" (T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_architecture  )  ))
  let bnfree_architecture_list = F.foreign  "BNFreeArchitectureList" (T.ptr (T.ptr bn_architecture) @-> returning (T.void ))
  (* let bnregister_architecture = F.foreign  "BNRegisterArchitecture" (T.string   @-> T.ptr bn_custom_architecture   @-> returning (T.ptr bn_architecture  )) *)
  let bnget_architecture_name = F.foreign  "BNGetArchitectureName" (T.ptr bn_architecture   @-> returning (T.string  ))
  let bnget_architecture_endianness = F.foreign  "BNGetArchitectureEndianness" (T.ptr bn_architecture   @-> returning ( E.bn_endianness ))
  let bnget_architecture_address_size = F.foreign  "BNGetArchitectureAddressSize" (T.ptr bn_architecture @-> returning (T.size_t ))
  let bnget_architecture_default_integer_size = F.foreign  "BNGetArchitectureDefaultIntegerSize" (T.ptr bn_architecture @-> returning (T.size_t ))
  let bnget_architecture_max_instruction_length = F.foreign  "BNGetArchitectureMaxInstructionLength" (T.ptr bn_architecture @-> returning (T.size_t ))
  let bnget_architecture_opcode_display_length = F.foreign  "BNGetArchitectureOpcodeDisplayLength" (T.ptr bn_architecture @-> returning (T.size_t ))
  let bnget_associated_architecture_by_address = F.foreign  "BNGetAssociatedArchitectureByAddress" (T.ptr bn_architecture   @-> T.ptr T.uint64_t   @-> returning (T.ptr bn_architecture  ))
  let bnget_instruction_info = F.foreign  "BNGetInstructionInfo" ( T.ptr bn_architecture   @->  T.ptr T.uint8_t   @->  T.uint64_t  @->  T.size_t  @->  T.ptr bninstruction_info   @-> returning (T.bool ))
  let bnget_instruction_text = F.foreign  "BNGetInstructionText" ( T.ptr bn_architecture   @->  T.ptr uint8_t   @->  T.uint64_t  @->  T.ptr T.size_t   @->  T.ptr (T.ptr bninstruction_text_token)    @->  T.ptr T.size_t   @-> returning (T.bool ))
  let bnget_instruction_low_level_il = F.foreign  "BNGetInstructionLowLevelIL" ( T.ptr bn_architecture   @->  T.ptr uint8_t   @->  T.uint64_t  @->  T.ptr T.size_t   @->  T.ptr bn_lowlevelilfunction   @-> returning (T.bool ))
  let bnfree_instruction_text = F.foreign  "BNFreeInstructionText" (T.ptr E.bninstruction_text_token   @-> T.size_t  @-> returning (T.void ))
  let bnget_architecture_register_name = F.foreign  "BNGetArchitectureRegisterName" (T.ptr bn_architecture   @->T.uint32_t  @-> returning (T.string  ))
  let bnget_architecture_flag_name = F.foreign  "BNGetArchitectureFlagName" (T.ptr bn_architecture   @->T.uint32_t  @-> returning (T.string  ))
  let bnget_architecture_flag_write_type_name = F.foreign  "BNGetArchitectureFlagWriteTypeName" (T.ptr bn_architecture   @->T.uint32_t  @-> returning (T.string  ))
  let bnget_full_width_architecture_registers = F.foreign  "BNGetFullWidthArchitectureRegisters" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_all_architecture_registers = F.foreign  "BNGetAllArchitectureRegisters" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_all_architecture_flags = F.foreign  "BNGetAllArchitectureFlags" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_all_architecture_flag_write_types = F.foreign  "BNGetAllArchitectureFlagWriteTypes" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_architecture_flag_role = F.foreign  "BNGetArchitectureFlagRole" (T.ptr bn_architecture   @->T.uint32_t  @-> returning ( E.bn_flag_role ))
  let bnget_architecture_flags_required_for_flag_condition = F.foreign  "BNGetArchitectureFlagsRequiredForFlagCondition" (T.ptr bn_architecture   @-> E.bn_lowlevel_il_flag_condition  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_architecture_flags_written_by_flag_write_type = F.foreign  "BNGetArchitectureFlagsWrittenByFlagWriteType" (T.ptr bn_architecture   @->T.uint32_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_architecture_flag_write_low_level_il = F.foreign  "BNGetArchitectureFlagWriteLowLevelIL"
      (T.ptr bn_architecture @-> bn_low_level_il_operation @-> T.size_t @-> T.uint32_t @-> T.uint32_t @-> T.ptr bn_register_or_constant @-> T.size_t @-> T.ptr bn_lowlevelilfunction @-> returning (T.size_t ))
  let bnget_default_architecture_flag_write_low_level_il = F.foreign  "BNGetDefaultArchitectureFlagWriteLowLevelIL" 
      (T.ptr bn_architecture @-> bn_low_level_il_operation @-> T.size_t @-> E.bn_flag_role @-> T.ptr bn_register_or_constant @-> T.size_t @-> T.ptr bn_lowlevelilfunction @-> returning (T.size_t ))
  let bnget_architecture_flag_condition_low_level_il = F.foreign  "BNGetArchitectureFlagConditionLowLevelIL"
      (T.ptr bn_architecture @-> bn_lowlevel_il_flag_condition @-> T.ptr bn_lowlevelilfunction @-> returning (T.size_t))
  let bnget_default_architecture_flag_condition_low_level_il = F.foreign  "BNGetDefaultArchitectureFlagConditionLowLevelIL"
      (T.ptr bn_architecture @-> bn_lowlevel_il_flag_condition @-> T.ptr bn_lowlevelilfunction @-> returning (T.size_t))
  let bnget_modified_architecture_registers_on_write = F.foreign  "BNGetModifiedArchitectureRegistersOnWrite" (T.ptr bn_architecture   @->T.uint32_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnfree_register_list = F.foreign  "BNFreeRegisterList" (T.ptr T.uint32_t   @-> returning (T.void ))
  let bnget_architecture_register_info = F.foreign  "BNGetArchitectureRegisterInfo" (T.ptr bn_architecture   @->T.uint32_t  @-> returning (E.bn_register_info ))
  let bnget_architecture_stack_pointer_register = F.foreign  "BNGetArchitectureStackPointerRegister" (T.ptr bn_architecture   @-> returning (T.uint32_t ))
  let bnget_architecture_link_register = F.foreign  "BNGetArchitectureLinkRegister" (T.ptr bn_architecture   @-> returning (T.uint32_t ))
  let bnget_architecture_register_by_name = F.foreign  "BNGetArchitectureRegisterByName" (T.ptr bn_architecture   @-> T.string   @-> returning (uint32_t ))
  (* let bnassemble = F.foreign  "BNAssemble" (returning (T.size_t )) *)
  (* (\* let bnis_architecture_never_branch_patch_available = F.foreign  "BNIsArchitectureNeverBranchPatchAvailable" (returning (T.size_t )) *\) *)
  (* (\* let bnis_architecture_always_branch_patch_available = F.foreign  "BNIsArchitectureAlwaysBranchPatchAvailable" (returning (T.size_t )) *\) *)
  (* (\* let bnis_architecture_invert_branch_patch_available = F.foreign  "BNIsArchitectureInvertBranchPatchAvailable" (returning (T.size_t )) *\) *)
  (* (\* let bnis_architecture_skip_and_return_zero_patch_available = F.foreign  "BNIsArchitectureSkipAndReturnZeroPatchAvailable" (returning (T.size_t )) *\) *)
  (* (\* let bnis_architecture_skip_and_return_value_patch_available = F.foreign  "BNIsArchitectureSkipAndReturnValuePatchAvailable" (returning (T.size_t )) *\) *)
  (* (\* let bnarchitecture_convert_to_nop = F.foreign  "BNArchitectureConvertToNop" (returning (T.size_t )) *\) *)
  (* (\* let bnarchitecture_always_branch = F.foreign  "BNArchitectureAlwaysBranch" (returning (T.size_t )) *\) *)
  (* (\* let bnarchitecture_invert_branch = F.foreign  "BNArchitectureInvertBranch" (returning (T.size_t )) *\) *)
  (* (\* let bnarchitecture_skip_and_return_value = F.foreign  "BNArchitectureSkipAndReturnValue" (returning (T.size_t )) *\) *)
  let bnregister_architecture_function_recognizer = F.foreign  "BNRegisterArchitectureFunctionRecognizer" (T.ptr bn_architecture   @-> T.ptr E.bnfunction_recognizer   @-> returning (T.void ))
  (* (\* let bnis_binary_view_type_architecture_constant_defined = F.foreign  "BNIsBinaryViewTypeArchitectureConstantDefined" (returning (T.size_t )) *\) *)
  let bnget_binary_view_type_architecture_constant = F.foreign  "BNGetBinaryViewTypeArchitectureConstant" (T.ptr bn_architecture   @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (uint64_t ))
  let bnset_binary_view_type_architecture_constant = F.foreign  "BNSetBinaryViewTypeArchitectureConstant" (T.ptr bn_architecture   @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnadd_function_for_analysis = F.foreign  "BNAddFunctionForAnalysis" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @->T.uint64_t  @-> returning (T.void ))
  let bnadd_entry_point_for_analysis = F.foreign  "BNAddEntryPointForAnalysis" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_analysis_function = F.foreign  "BNRemoveAnalysisFunction" (T.ptr bn_binary_view   @-> T.ptr bn_function   @-> returning (T.void ))
  let bncreate_user_function = F.foreign  "BNCreateUserFunction" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_user_function = F.foreign  "BNRemoveUserFunction" (T.ptr bn_binary_view   @-> T.ptr bn_function   @-> returning (T.void ))
  let bnupdate_analysis = F.foreign  "BNUpdateAnalysis" (T.ptr bn_binary_view   @-> returning (T.void ))
  let bnabort_analysis = F.foreign  "BNAbortAnalysis" (T.ptr bn_binary_view   @-> returning (T.void ))
  let bnis_function_update_needed = F.foreign  "BNIsFunctionUpdateNeeded" (T.ptr bn_function @-> returning (T.bool ))
  let bnrequest_advanced_function_analysis_data = F.foreign  "BNRequestAdvancedFunctionAnalysisData" (T.ptr bn_function   @-> returning (T.void ))
  let bnrelease_advanced_function_analysis_data = F.foreign  "BNReleaseAdvancedFunctionAnalysisData" (T.ptr bn_function   @-> returning (T.void ))
  let bnrelease_advanced_function_analysis_data_multiple = F.foreign  "BNReleaseAdvancedFunctionAnalysisDataMultiple" (T.ptr bn_function   @-> T.size_t  @-> returning (T.void ))
  let bnnew_function_reference = F.foreign  "BNNewFunctionReference" (T.ptr bn_function   @-> returning (T.ptr bn_function  ))
  let bnfree_function = F.foreign  "BNFreeFunction" (T.ptr bn_function   @-> returning (T.void ))
  let bnget_analysis_function_list = F.foreign  "BNGetAnalysisFunctionList" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_function  )  ))
  let bnfree_function_list = F.foreign  "BNFreeFunctionList" (T.ptr ( T.ptr bn_function  )   @-> T.size_t  @-> returning (T.void ))
  let bnhas_functions = F.foreign  "BNHasFunctions" (T.ptr bn_binary_view @-> returning (T.bool ))
  let bnget_analysis_function = F.foreign  "BNGetAnalysisFunction" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @->T.uint64_t  @-> returning (T.ptr bn_function  ))
  let bnget_recent_analysis_function_for_address = F.foreign  "BNGetRecentAnalysisFunctionForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.ptr bn_function  ))
  let bnget_analysis_functions_for_address = F.foreign  "BNGetAnalysisFunctionsForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_function  )  ))
  let bnget_analysis_entry_point = F.foreign  "BNGetAnalysisEntryPoint" (T.ptr bn_binary_view   @-> returning (T.ptr bn_function  ))
  let bnget_function_data = F.foreign  "BNGetFunctionData" (T.ptr bn_function   @-> returning (T.ptr bn_binary_view  ))
  let bnget_function_architecture = F.foreign  "BNGetFunctionArchitecture" (T.ptr bn_function   @-> returning (T.ptr bn_architecture  ))
  let bnget_function_platform = F.foreign  "BNGetFunctionPlatform" (T.ptr bn_function   @-> returning (T.ptr bn_platform  ))
  let bnget_function_start = F.foreign  "BNGetFunctionStart" (T.ptr bn_function   @-> returning (uint64_t ))
  let bnget_function_symbol = F.foreign  "BNGetFunctionSymbol" (T.ptr bn_function   @-> returning (T.ptr bn_symbol  ))
  let bnwas_function_automatically_discovered = F.foreign  "BNWasFunctionAutomaticallyDiscovered" (T.ptr bn_function @-> returning (T.bool ))
  let bncan_function_return = F.foreign  "BNCanFunctionReturn" (T.ptr bn_function @-> returning (T.bool ))
  let bnset_function_auto_type = F.foreign  "BNSetFunctionAutoType" (T.ptr bn_function   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnset_function_user_type = F.foreign  "BNSetFunctionUserType" (T.ptr bn_function   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnget_comment_for_address = F.foreign  "BNGetCommentForAddress" (T.ptr bn_function   @->T.uint64_t  @-> returning (T.string  ))
  let bnget_commented_addresses = F.foreign  "BNGetCommentedAddresses" (T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint64_t  ))
  let bnfree_address_list = F.foreign  "BNFreeAddressList" (T.ptr T.uint64_t   @-> returning (T.void ))
  let bnset_comment_for_address = F.foreign  "BNSetCommentForAddress" (T.ptr bn_function   @->T.uint64_t  @-> T.string   @-> returning (T.void ))
  let bnnew_basic_block_reference = F.foreign  "BNNewBasicBlockReference" (T.ptr bn_basicblock   @-> returning (T.ptr bn_basicblock  ))
  let bnfree_basic_block = F.foreign  "BNFreeBasicBlock" (T.ptr bn_basicblock   @-> returning (T.void ))
  let bnget_function_basic_block_list = F.foreign  "BNGetFunctionBasicBlockList" (T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_basicblock  )  ))
  let bnfree_basic_block_list = F.foreign  "BNFreeBasicBlockList" (T.ptr ( T.ptr bn_basicblock  )   @-> T.size_t  @-> returning (T.void ))
  let bnget_function_basic_block_at_address = F.foreign  "BNGetFunctionBasicBlockAtAddress" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> returning (T.ptr bn_basicblock  ))
  let bnget_recent_basic_block_for_address = F.foreign  "BNGetRecentBasicBlockForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.ptr bn_basicblock  ))
  let bnget_basic_blocks_for_address = F.foreign  "BNGetBasicBlocksForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_basicblock  )  ))
  let bnget_basic_blocks_starting_at_address = F.foreign  "BNGetBasicBlocksStartingAtAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_basicblock )   ))
  let bnget_function_low_level_il = F.foreign  "BNGetFunctionLowLevelIL" (T.ptr bn_function   @-> returning (T.ptr bn_lowlevelilfunction  ))
  let bnget_low_level_ilfor_instruction = F.foreign  "BNGetLowLevelILForInstruction" (T.ptr bn_function @-> T.ptr bn_architecture @-> T.uint64_t @-> returning (T.size_t ))
  let bnget_low_level_ilexits_for_instruction = F.foreign  "BNGetLowLevelILExitsForInstruction" (T.ptr bn_function @-> T.ptr bn_architecture @-> T.uint64_t @-> T.ptr T.size_t @-> returning (T.ptr T.size_t  ))
  let bnfree_low_level_ilinstruction_list = F.foreign  "BNFreeILInstructionList" (T.ptr T.size_t   @-> returning (T.void ))
  let bnget_function_medium_level_il = F.foreign  "BNGetFunctionMediumLevelIL" ( T.ptr ( bn_function )  @-> returning (T.ptr ( bn_medium_level_ilfunction ) ))
  let bnget_register_value_at_instruction = F.foreign  "BNGetRegisterValueAtInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @->T.uint32_t  @-> returning (E.bn_register_value ))
  let bnget_register_value_after_instruction = F.foreign  "BNGetRegisterValueAfterInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @->T.uint32_t  @-> returning (E.bn_register_value ))
  let bnget_stack_contents_at_instruction = F.foreign  "BNGetStackContentsAtInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> int64_t  @-> T.size_t  @-> returning (E.bn_register_value ))
  let bnget_stack_contents_after_instruction = F.foreign  "BNGetStackContentsAfterInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> int64_t  @-> T.size_t  @-> returning (E.bn_register_value ))
  let bnget_parameter_value_at_instruction = F.foreign  "BNGetParameterValueAtInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr bn_type   @-> T.size_t  @-> returning (E.bn_register_value ))
  let bnget_parameter_value_at_low_level_ilinstruction = F.foreign  "BNGetParameterValueAtLowLevelILInstruction" (T.ptr bn_function   @-> T.size_t  @-> T.ptr bn_type   @-> T.size_t  @-> returning (E.bn_register_value ))

  let bnfree_possible_value_set = F.foreign  "BNFreePossibleValueSet" ( T.ptr ( bnpossible_value_set )  @-> returning (T.void ))

  let bnget_registers_read_by_instruction = F.foreign  "BNGetRegistersReadByInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_registers_written_by_instruction = F.foreign  "BNGetRegistersWrittenByInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_stack_variables_referenced_by_instruction = F.foreign  "BNGetStackVariablesReferencedByInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnstack_variable_reference  ))
  let bnfree_stack_variable_reference_list = F.foreign  "BNFreeStackVariableReferenceList" (T.ptr bnstack_variable_reference   @-> T.size_t  @-> returning (T.void ))
  let bnget_constants_referenced_by_instruction = F.foreign  "BNGetConstantsReferencedByInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnconstant_reference))
  let bnfree_constant_reference_list = F.foreign  "BNFreeConstantReferenceList" (T.ptr bnconstant_reference   @-> returning (T.void ))
  let bnget_function_lifted_il = F.foreign  "BNGetFunctionLiftedIL" (T.ptr bn_function   @-> returning (T.ptr bn_lowlevelilfunction  ))
  let bnget_lifted_ilfor_instruction = F.foreign  "BNGetLiftedILForInstruction" (T.ptr bn_function @-> T.ptr bn_architecture @-> T.uint64_t @-> returning (T.size_t ))
  let bnget_lifted_ilflag_uses_for_definition = F.foreign  "BNGetLiftedILFlagUsesForDefinition" (T.ptr bn_function @-> T.ptr T.size_t @-> T.uint32_t @-> T.ptr T.size_t @-> returning (T.ptr T.size_t))
  let bnget_lifted_ilflag_definitions_for_use = F.foreign  "BNGetLiftedILFlagDefinitionsForUse" (T.ptr bn_function @-> T.ptr T.size_t @-> T.uint32_t @-> T.ptr T.size_t @-> returning (T.ptr T.size_t))
  let bnget_flags_read_by_lifted_ilinstruction = F.foreign  "BNGetFlagsReadByLiftedILInstruction" (T.ptr bn_function   @-> T.size_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t))
  let bnget_flags_written_by_lifted_ilinstruction = F.foreign  "BNGetFlagsWrittenByLiftedILInstruction" (T.ptr bn_function   @-> T.size_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t))
  let bnget_function_type = F.foreign  "BNGetFunctionType" (T.ptr bn_function   @-> returning (T.ptr bn_type  ))
  let bnapply_imported_types = F.foreign  "BNApplyImportedTypes" (T.ptr bn_function   @-> T.ptr bn_symbol   @-> returning (T.void ))
  let bnapply_auto_discovered_function_type = F.foreign  "BNApplyAutoDiscoveredFunctionType" (T.ptr bn_function   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnfunction_has_explicitly_defined_type = F.foreign  "BNFunctionHasExplicitlyDefinedType" (T.ptr bn_function @-> returning (T.bool ))
  let bnget_basic_block_function = F.foreign  "BNGetBasicBlockFunction" (T.ptr bn_basicblock   @-> returning (T.ptr bn_function  ))
  let bnget_basic_block_architecture = F.foreign  "BNGetBasicBlockArchitecture" (T.ptr bn_basicblock   @-> returning (T.ptr bn_architecture  ))
  let bnget_basic_block_start = F.foreign  "BNGetBasicBlockStart" (T.ptr bn_basicblock   @-> returning (uint64_t ))
  let bnget_basic_block_end = F.foreign  "BNGetBasicBlockEnd" (T.ptr bn_basicblock   @-> returning (uint64_t ))
  let bnget_basic_block_length = F.foreign  "BNGetBasicBlockLength" (T.ptr bn_basicblock   @-> returning (uint64_t ))
  let bnget_basic_block_outgoing_edges = F.foreign  "BNGetBasicBlockOutgoingEdges" (T.ptr bn_basicblock   @-> T.ptr T.size_t   @-> returning (T.ptr bn_basic_block_edge))
  let bnget_basic_block_incoming_edges = F.foreign  "BNGetBasicBlockIncomingEdges" ( T.ptr ( bn_basicblock )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bn_basic_block_edge ) ))


  let bnfree_basic_block_edge_list = F.foreign  "BNFreeBasicBlockEdgeList" ( T.ptr ( bn_basic_block_edge )  @->  T.size_t  @-> returning (T.void ))

  let bnget_basic_block_index = F.foreign  "BNGetBasicBlockIndex" (T.ptr (bn_basicblock) @-> returning (T.size_t ))

  let bnbasic_block_has_undetermined_outgoing_edges = F.foreign  "BNBasicBlockHasUndeterminedOutgoingEdges" (T.ptr bn_basicblock @-> returning (T.bool ))

  let bnget_basic_block_dominators = F.foreign  "BNGetBasicBlockDominators" ( T.ptr ( bn_basicblock )  @->  T.ptr (T.size_t )  @-> returning (T.ptr (T.ptr ( bn_basicblock ) ) ))
  let bnget_basic_block_strict_dominators = F.foreign  "BNGetBasicBlockStrictDominators" ( T.ptr ( bn_basicblock )  @->  T.ptr (T.size_t )  @-> returning (T.ptr (T.ptr ( bn_basicblock ) ) ))
  let bnget_basic_block_immediate_dominator = F.foreign  "BNGetBasicBlockImmediateDominator" ( T.ptr ( bn_basicblock )  @-> returning (T.ptr ( bn_basicblock ) ))
  let bnget_basic_block_dominator_tree_children = F.foreign  "BNGetBasicBlockDominatorTreeChildren" ( T.ptr ( bn_basicblock )  @->  T.ptr (T.size_t )  @-> returning (T.ptr (T.ptr ( bn_basicblock ) ) ))
  let bnget_basic_block_dominance_frontier = F.foreign  "BNGetBasicBlockDominanceFrontier" ( T.ptr ( bn_basicblock )  @->  T.ptr (T.size_t )  @-> returning (T.ptr (T.ptr ( bn_basicblock ) ) ))
  let bnget_basic_block_iterated_dominance_frontier = F.foreign  "BNGetBasicBlockIteratedDominanceFrontier" ( T.ptr (T.ptr ( bn_basicblock ) )  @->  T.size_t  @->  T.ptr (T.size_t )  @-> returning (T.ptr (T.ptr ( bn_basicblock ) ) ))

  let bnget_basic_block_disassembly_text = F.foreign  "BNGetBasicBlockDisassemblyText" (T.ptr bn_basicblock   @-> T.ptr bndisassembly_settings   @-> T.ptr T.size_t   @-> returning (T.ptr bndisassembly_text_line))
  let bnfree_disassembly_text_lines = F.foreign  "BNFreeDisassemblyTextLines" (T.ptr bndisassembly_text_line   @-> T.size_t  @-> returning (T.void ))
  let bnmark_function_as_recently_used = F.foreign  "BNMarkFunctionAsRecentlyUsed" (T.ptr bn_function   @-> returning (T.void ))
  let bnmark_basic_block_as_recently_used = F.foreign  "BNMarkBasicBlockAsRecentlyUsed" (T.ptr bn_basicblock   @-> returning (T.void ))
  let bnget_code_references = F.foreign  "BNGetCodeReferences" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnreference_source  ))
  let bnget_code_references_in_range = F.foreign  "BNGetCodeReferencesInRange" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnreference_source  ))
  let bnfree_code_references = F.foreign  "BNFreeCodeReferences" (T.ptr bnreference_source   @-> T.size_t  @-> returning (T.void ))
  let bnregister_global_function_recognizer = F.foreign  "BNRegisterGlobalFunctionRecognizer" (T.ptr bnfunction_recognizer   @-> returning (T.void ))
  let bnget_strings = F.foreign  "BNGetStrings" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr bnstring_reference  ))
  let bnget_strings_in_range = F.foreign  "BNGetStringsInRange" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnstring_reference  ))
  let bnfree_string_reference_list = F.foreign  "BNFreeStringReferenceList" (T.ptr bnstring_reference   @-> returning (T.void ))
  let bnget_stack_layout = F.foreign  "BNGetStackLayout" (T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr bnvariable_name_and_type  ))
  let bnfree_variable_list = F.foreign  "BNFreeVariableList" ( T.ptr ( bnvariable_name_and_type )  @->  T.size_t  @-> returning (T.void ))

  let bncreate_auto_stack_variable = F.foreign  "BNCreateAutoStackVariable" (T.ptr bn_function   @-> int64_t  @-> T.ptr bn_type   @-> T.string   @-> returning (T.void ))
  let bncreate_user_stack_variable = F.foreign  "BNCreateUserStackVariable" (T.ptr bn_function   @-> int64_t  @-> T.ptr bn_type   @-> T.string   @-> returning (T.void ))
  let bndelete_auto_stack_variable = F.foreign  "BNDeleteAutoStackVariable" (T.ptr bn_function   @-> int64_t  @-> returning (T.void ))
  let bndelete_user_stack_variable = F.foreign  "BNDeleteUserStackVariable" (T.ptr bn_function   @-> int64_t  @-> returning (T.void ))
  let bnget_stack_variable_at_frame_offset = F.foreign  "BNGetStackVariableAtFrameOffset" ( T.ptr ( bn_function )  @->  T.ptr ( bn_architecture )  @->   T.uint64_t  @->   T.int64_t  @->  T.ptr ( bnvariable_name_and_type )  @-> returning (T.bool ))
  let bnfree_variable_name_and_type = F.foreign  "BNFreeVariableNameAndType" ( T.ptr ( bnvariable_name_and_type )  @-> returning (T.void ))

  let bnget_function_variables = F.foreign  "BNGetFunctionVariables" (T.ptr ( bn_function )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bnvariable_name_and_type ) ))
  let bncreate_auto_variable = F.foreign  "BNCreateAutoVariable" ( T.ptr ( bn_function )  @->  T.ptr ( bnvariable )  @->  T.ptr ( bn_type )  @->  T.string  @->  T.bool  @-> returning (T.void ))
  let bncreate_user_variable = F.foreign  "BNCreateUserVariable" ( T.ptr ( bn_function )  @->  T.ptr ( bnvariable )  @->  T.ptr ( bn_type )  @->  T.string  @->  T.bool  @-> returning (T.void ))
  let bndelete_auto_variable = F.foreign  "BNDeleteAutoVariable" ( T.ptr ( bn_function )  @->  T.ptr ( bnvariable )  @-> returning (T.void ))
  let bndelete_user_variable = F.foreign  "BNDeleteUserVariable" ( T.ptr ( bn_function )  @->  T.ptr ( bnvariable )  @-> returning (T.void ))
  let bnget_variable_type = F.foreign  "BNGetVariableType" ( T.ptr ( bn_function )  @->  T.ptr ( bnvariable )  @-> returning (T.ptr ( bn_type ) ))
  let bnget_variable_name = F.foreign  "BNGetVariableName" ( T.ptr ( bn_function )  @->  T.ptr ( bnvariable )  @-> returning (T.string ))
  let bnto_variable_identifier = F.foreign  "BNToVariableIdentifier" (  T.ptr ( bnvariable )  @-> returning ( uint64_t ))
  let bnfrom_variable_identifier = F.foreign  "BNFromVariableIdentifier" ( T.uint64_t  @-> returning ( bnvariable ))









  let bnset_auto_indirect_branches = F.foreign  "BNSetAutoIndirectBranches" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr E.bnarchitecture_and_address   @-> T.size_t  @-> returning (T.void ))
  let bnset_user_indirect_branches = F.foreign  "BNSetUserIndirectBranches" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr E.bnarchitecture_and_address   @-> T.size_t  @-> returning (T.void ))
  let bnget_indirect_branches = F.foreign  "BNGetIndirectBranches" (T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnindirect_branch_info  ))
  let bnget_indirect_branches_at = F.foreign  "BNGetIndirectBranchesAt" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bnindirect_branch_info  ))
  let bnfree_indirect_branch_list = F.foreign  "BNFreeIndirectBranchList" (T.ptr E.bnindirect_branch_info   @-> returning (T.void ))
  let bnget_function_block_annotations = F.foreign  "BNGetFunctionBlockAnnotations" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bninstruction_text_line  ))
  let bnfree_instruction_text_lines = F.foreign  "BNFreeInstructionTextLines" (T.ptr E.bninstruction_text_line   @-> T.size_t  @-> returning (T.void ))
  let bnget_integer_constant_display_type = F.foreign  "BNGetIntegerConstantDisplayType" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @->T.uint64_t  @-> T.size_t  @-> returning ( E.bnintegerdisplaytype ))
  let bnset_integer_constant_display_type = F.foreign  "BNSetIntegerConstantDisplayType" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @->T.uint64_t  @-> T.size_t  @->  E.bnintegerdisplaytype  @-> returning (T.void ))
  let bnadd_analysis_completion_event = F.foreign  "BNAddAnalysisCompletionEvent"
      (T.ptr bn_binary_view   @-> T.ptr T.void   @-> T.static_funptr T.(T.ptr T.void @-> returning T.void) @->  returning (T.ptr bn_analysis_completionevent  ))
  let bnnew_analysis_completion_event_reference = F.foreign  "BNNewAnalysisCompletionEventReference" (T.ptr bn_analysis_completionevent   @-> returning (T.ptr bn_analysis_completionevent))
  let bnfree_analysis_completion_event = F.foreign  "BNFreeAnalysisCompletionEvent" (T.ptr bn_analysis_completionevent   @-> returning (T.void ))
  let bncancel_analysis_completion_event = F.foreign  "BNCancelAnalysisCompletionEvent" (T.ptr bn_analysis_completionevent   @-> returning (T.void ))
  let bnget_analysis_progress = F.foreign  "BNGetAnalysisProgress" (T.ptr bn_binary_view   @-> returning (E.bn_analysis_progress ))
  let bnget_next_function_start_after_address = F.foreign  "BNGetNextFunctionStartAfterAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t))
  let bnget_next_basic_block_start_after_address = F.foreign  "BNGetNextBasicBlockStartAfterAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_next_data_after_address = F.foreign  "BNGetNextDataAfterAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t))
  let bnget_next_data_variable_after_address = F.foreign  "BNGetNextDataVariableAfterAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_function_start_before_address = F.foreign  "BNGetPreviousFunctionStartBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_basic_block_start_before_address = F.foreign  "BNGetPreviousBasicBlockStartBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_basic_block_end_before_address = F.foreign  "BNGetPreviousBasicBlockEndBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_data_before_address = F.foreign  "BNGetPreviousDataBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_data_variable_before_address = F.foreign  "BNGetPreviousDataVariableBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_linear_disassembly_position_for_address = F.foreign  "BNGetLinearDisassemblyPositionForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr bndisassembly_settings   @-> returning (E.bnlinear_disassembly_position ))
  let bnfree_linear_disassembly_position = F.foreign  "BNFreeLinearDisassemblyPosition" (T.ptr E.bnlinear_disassembly_position   @-> returning (T.void ))
  let bnget_previous_linear_disassembly_lines = F.foreign  "BNGetPreviousLinearDisassemblyLines" (T.ptr bn_binary_view   @-> T.ptr E.bnlinear_disassembly_position   @-> T.ptr bndisassembly_settings   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnlinear_disassembly_line  ))
  let bnget_next_linear_disassembly_lines = F.foreign  "BNGetNextLinearDisassemblyLines" (T.ptr bn_binary_view   @-> T.ptr E.bnlinear_disassembly_position   @-> T.ptr bndisassembly_settings   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnlinear_disassembly_line  ))
  let bnfree_linear_disassembly_lines = F.foreign  "BNFreeLinearDisassemblyLines" (T.ptr E.bnlinear_disassembly_line   @-> T.size_t  @-> returning (T.void ))
  let bndefine_data_variable = F.foreign  "BNDefineDataVariable" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr bn_type   @-> returning (T.void ))
  let bndefine_user_data_variable = F.foreign  "BNDefineUserDataVariable" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr bn_type   @-> returning (T.void ))
  let bnundefine_data_variable = F.foreign  "BNUndefineDataVariable" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.void ))
  let bnundefine_user_data_variable = F.foreign  "BNUndefineUserDataVariable" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.void ))
  let bnget_data_variables = F.foreign  "BNGetDataVariables" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr bn_data_variable  ))
  let bnfree_data_variables = F.foreign  "BNFreeDataVariables" (T.ptr bn_data_variable   @-> T.size_t  @-> returning (T.void ))
  let bnget_data_variable_at_address = F.foreign  "BNGetDataVariableAtAddress" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bn_data_variable @-> returning (T.bool ))
  let bnparse_type_string = F.foreign  "BNParseTypeString" (T.ptr bn_binary_view @-> T.string @-> T.ptr bnqualified_name_and_type @-> T.ptr T.string @-> returning (T.bool ))
  let bnfree_name_and_type = F.foreign  "BNFreeNameAndType" (T.ptr bnname_and_type @-> returning (T.void ))

  let bnfree_qualified_name_and_type = F.foreign  "BNFreeQualifiedNameAndType" ( T.ptr ( bnqualified_name_and_type )  @-> returning (T.void ))
  let bnget_analysis_type_list = F.foreign  "BNGetAnalysisTypeList" ( T.ptr ( bn_binary_view )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bnqualified_name_and_type ) ))
  let bnfree_type_list = F.foreign  "BNFreeTypeList" ( T.ptr ( bnqualified_name_and_type )  @->  T.size_t  @-> returning (T.void ))
  let bnget_analysis_type_by_name = F.foreign  "BNGetAnalysisTypeByName" (T.ptr ( bn_binary_view )  @->  T.ptr ( bnqualified_name )  @-> returning (T.ptr ( bn_type ) ))
  let bnget_analysis_type_by_id = F.foreign  "BNGetAnalysisTypeById" (T.ptr ( bn_binary_view )  @->  T.string  @-> returning (T.ptr ( bn_type ) ))
  let bnget_analysis_type_id = F.foreign  "BNGetAnalysisTypeId" ( T.ptr ( bn_binary_view )  @->  T.ptr ( bnqualified_name )  @-> returning (T.string ))
  let bnget_analysis_type_name_by_id = F.foreign  "BNGetAnalysisTypeNameById" ( T.ptr ( bn_binary_view )  @->  T.string  @-> returning ( bnqualified_name ))
  let bnis_analysis_type_auto_defined = F.foreign  "BNIsAnalysisTypeAutoDefined" ( T.ptr ( bn_binary_view )  @->  T.ptr ( bnqualified_name )  @-> returning (T.bool ))
  let bndefine_analysis_type = F.foreign  "BNDefineAnalysisType" ( T.ptr ( bn_binary_view )  @->  T.string  @->  T.ptr ( bnqualified_name )  @->  T.ptr ( bn_type )  @-> returning ( bnqualified_name ))
  let bndefine_user_analysis_type = F.foreign  "BNDefineUserAnalysisType" ( T.ptr ( bn_binary_view )  @->  T.ptr ( bnqualified_name )  @->  T.ptr ( bn_type )  @-> returning (T.void ))
  let bnundefine_analysis_type = F.foreign  "BNUndefineAnalysisType" ( T.ptr ( bn_binary_view )  @->  T.string  @-> returning (T.void ))
  let bnundefine_user_analysis_type = F.foreign  "BNUndefineUserAnalysisType" ( T.ptr ( bn_binary_view )  @->  T.ptr ( bnqualified_name )  @-> returning (T.void ))
  let bnrename_analysis_type = F.foreign  "BNRenameAnalysisType" ( T.ptr ( bn_binary_view )  @->  T.ptr ( bnqualified_name )  @->  T.ptr ( bnqualified_name )  @-> returning (T.void ))
  let bngenerate_auto_type_id = F.foreign  "BNGenerateAutoTypeId" ( T.string  @->  T.ptr ( bnqualified_name )  @-> returning (T.string ))
  let bngenerate_auto_platform_type_id = F.foreign  "BNGenerateAutoPlatformTypeId" ( T.ptr ( bn_platform )  @->  T.ptr ( bnqualified_name )  @-> returning (T.string ))
  let bngenerate_auto_demangled_type_id = F.foreign  "BNGenerateAutoDemangledTypeId" ( T.ptr ( bnqualified_name )  @-> returning (T.string ))
  let bnget_auto_platform_type_id_source = F.foreign  "BNGetAutoPlatformTypeIdSource" ( T.ptr ( bn_platform )  @-> returning (T.string ))
  let bnget_auto_demangled_type_id_source = F.foreign  "BNGetAutoDemangledTypeIdSource" (T.void @-> returning (T.string ))
  let bngenerate_auto_debug_type_id = F.foreign  "BNGenerateAutoDebugTypeId" ( T.ptr ( bnqualified_name )  @-> returning (T.string ))
  let bnget_auto_debug_type_id_source = F.foreign  "BNGetAutoDebugTypeIdSource" (T.void @-> returning (T.string ))
  let bnregister_platform_types = F.foreign  "BNRegisterPlatformTypes" ( T.ptr ( bn_binary_view )  @->  T.ptr ( bn_platform )  @-> returning (T.void ))

  let bnreanalyze_all_functions = F.foreign  "BNReanalyzeAllFunctions" (T.ptr bn_binary_view   @-> returning (T.void ))
  let bnreanalyze_function = F.foreign  "BNReanalyzeFunction" (T.ptr bn_function   @-> returning (T.void ))
  let bnget_instruction_highlight = F.foreign  "BNGetInstructionHighlight" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> returning (bnhighlight_color ))
  let bnset_auto_instruction_highlight = F.foreign  "BNSetAutoInstructionHighlight" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> bnhighlight_color  @-> returning (T.void ))
  let bnset_user_instruction_highlight = F.foreign  "BNSetUserInstructionHighlight" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> bnhighlight_color  @-> returning (T.void ))
  let bnget_basic_block_highlight = F.foreign  "BNGetBasicBlockHighlight" (T.ptr bn_basicblock   @-> returning (bnhighlight_color ))
  let bnset_auto_basic_block_highlight = F.foreign  "BNSetAutoBasicBlockHighlight" (T.ptr bn_basicblock   @->E.bnhighlight_color  @-> returning (T.void ))
  let bnset_user_basic_block_highlight = F.foreign  "BNSetUserBasicBlockHighlight" (T.ptr bn_basicblock   @->E.bnhighlight_color  @-> returning (T.void ))

  let bnget_function_analysis_performance_info = F.foreign  "BNGetFunctionAnalysisPerformanceInfo" ( T.ptr ( bn_function )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bnperformance_info ) ))
  let bnfree_analysis_performance_info = F.foreign  "BNFreeAnalysisPerformanceInfo" ( T.ptr ( bnperformance_info )  @->  T.size_t  @-> returning (T.void ))

  let bncreate_disassembly_settings = F.foreign  "BNCreateDisassemblySettings" (T.void @-> returning (T.ptr bndisassembly_settings))
  let bnnew_disassembly_settings_reference = F.foreign  "BNNewDisassemblySettingsReference" (T.ptr E.bndisassembly_settings   @-> returning (T.ptr E.bndisassembly_settings  ))
  let bnfree_disassembly_settings = F.foreign  "BNFreeDisassemblySettings" (T.ptr E.bndisassembly_settings   @-> returning (T.void ))
  let bnis_disassembly_settings_option_set = F.foreign  "BNIsDisassemblySettingsOptionSet" (T.ptr bndisassembly_settings @-> bndisassemblyoption @-> returning (T.bool ))
  let bnset_disassembly_settings_option = F.foreign  "BNSetDisassemblySettingsOption" (T.ptr bndisassembly_settings   @->  bndisassemblyoption  @-> T.bool  @-> returning (T.void ))
  let bnget_disassembly_width = F.foreign  "BNGetDisassemblyWidth" (T.ptr bndisassembly_settings @-> returning (T.size_t ))
  let bnset_disassembly_width = F.foreign  "BNSetDisassemblyWidth" (T.ptr E.bndisassembly_settings   @-> T.size_t  @-> returning (T.void ))
  let bnget_disassembly_maximum_symbol_width = F.foreign  "BNGetDisassemblyMaximumSymbolWidth" (T.ptr bndisassembly_settings @-> returning (T.size_t))
  let bnset_disassembly_maximum_symbol_width = F.foreign  "BNSetDisassemblyMaximumSymbolWidth" (T.ptr E.bndisassembly_settings   @-> T.size_t  @-> returning (T.void ))
  let bncreate_function_graph = F.foreign  "BNCreateFunctionGraph" (T.ptr bn_function   @-> returning (T.ptr bn_functiongraph  ))
  let bnnew_function_graph_reference = F.foreign  "BNNewFunctionGraphReference" (T.ptr bn_functiongraph   @-> returning (T.ptr bn_functiongraph  ))
  let bnfree_function_graph = F.foreign  "BNFreeFunctionGraph" (T.ptr bn_functiongraph   @-> returning (T.void ))
  let bnget_function_for_function_graph = F.foreign  "BNGetFunctionForFunctionGraph" (T.ptr bn_functiongraph   @-> returning (T.ptr bn_function  ))
  let bnget_horizontal_function_graph_block_margin = F.foreign  "BNGetHorizontalFunctionGraphBlockMargin" (T.ptr bn_functiongraph   @-> returning (T.size_t ))
  let bnget_vertical_function_graph_block_margin = F.foreign  "BNGetVerticalFunctionGraphBlockMargin" (T.ptr bn_functiongraph   @-> returning (T.size_t ))
  let bnset_function_graph_block_margins = F.foreign  "BNSetFunctionGraphBlockMargins" (T.ptr bn_functiongraph   @-> T.size_t  @-> T.size_t  @-> returning (T.void ))
  let bnget_function_graph_settings = F.foreign  "BNGetFunctionGraphSettings" (T.ptr bn_functiongraph   @-> returning (T.ptr E.bndisassembly_settings  ))
  let bnstart_function_graph_layout = F.foreign  "BNStartFunctionGraphLayout" (T.ptr bn_functiongraph   @->  bn_function_graph_type  @-> returning (T.void ))
  let bnis_function_graph_layout_complete = F.foreign  "BNIsFunctionGraphLayoutComplete" (T.ptr bn_functiongraph @-> returning (T.bool ))
  let bnset_function_graph_complete_callback = F.foreign  "BNSetFunctionGraphCompleteCallback" (T.ptr bn_functiongraph   @-> T.ptr T.void   @-> T.static_funptr T.(T.ptr void @-> returning (T.ptr T.void))  @-> returning (T.void ))
  let bnabort_function_graph = F.foreign  "BNAbortFunctionGraph" (T.ptr bn_functiongraph   @-> returning (T.void ))
  let bnget_function_graph_type = F.foreign  "BNGetFunctionGraphType" (T.ptr bn_functiongraph   @-> returning ( bn_function_graph_type ))
  let bnget_function_graph_blocks = F.foreign  "BNGetFunctionGraphBlocks" (T.ptr bn_functiongraph   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_functiongraphblock)))
  let bnget_function_graph_blocks_in_region = F.foreign  "BNGetFunctionGraphBlocksInRegion" (T.ptr bn_functiongraph   @-> T.size_t  @-> T.size_t  @-> T.size_t  @-> T.size_t  @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_functiongraphblock)))
  let bnfree_function_graph_block_list = F.foreign  "BNFreeFunctionGraphBlockList" (T.ptr (T.ptr bn_functiongraphblock)    @-> T.size_t @-> returning (T.void ))
  let bnget_function_graph_width = F.foreign  "BNGetFunctionGraphWidth" (T.ptr bn_functiongraph   @-> returning (T.size_t ))
  let bnget_function_graph_height = F.foreign  "BNGetFunctionGraphHeight" (T.ptr bn_functiongraph   @-> returning (T.size_t ))
  let bnis_function_graph_option_set = F.foreign  "BNIsFunctionGraphOptionSet" (T.ptr bn_functiongraph @-> bndisassemblyoption @-> returning (T.bool ))
  let bnset_function_graph_option = F.foreign  "BNSetFunctionGraphOption" (T.ptr bn_functiongraph   @->  bndisassemblyoption  @-> T.bool  @-> returning (T.void ))
  let bnnew_function_graph_block_reference = F.foreign  "BNNewFunctionGraphBlockReference" (T.ptr bn_functiongraphblock   @-> returning (T.ptr bn_functiongraphblock  ))
  let bnfree_function_graph_block = F.foreign  "BNFreeFunctionGraphBlock" (T.ptr bn_functiongraphblock   @-> returning (T.void ))
  let bnget_function_graph_basic_block = F.foreign  "BNGetFunctionGraphBasicBlock" (T.ptr bn_functiongraphblock   @-> returning (T.ptr bn_basicblock  ))
  let bnget_function_graph_block_architecture = F.foreign  "BNGetFunctionGraphBlockArchitecture" (T.ptr bn_functiongraphblock   @-> returning (T.ptr bn_architecture  ))
  let bnget_function_graph_block_start = F.foreign  "BNGetFunctionGraphBlockStart" (T.ptr bn_functiongraphblock   @-> returning (T.uint64_t ))
  let bnget_function_graph_block_end = F.foreign  "BNGetFunctionGraphBlockEnd" (T.ptr bn_functiongraphblock   @-> returning (T.uint64_t ))
  let bnget_function_graph_block_x = F.foreign  "BNGetFunctionGraphBlockX" (T.ptr bn_functiongraphblock   @-> returning (T.size_t ))
  let bnget_function_graph_block_y = F.foreign  "BNGetFunctionGraphBlockY" (T.ptr bn_functiongraphblock   @-> returning (T.size_t ))
  let bnget_function_graph_block_width = F.foreign  "BNGetFunctionGraphBlockWidth" (T.ptr bn_functiongraphblock   @-> returning (T.size_t ))
  let bnget_function_graph_block_height = F.foreign  "BNGetFunctionGraphBlockHeight" (T.ptr bn_functiongraphblock   @-> returning (T.size_t ))
  let bnget_function_graph_block_lines = F.foreign  "BNGetFunctionGraphBlockLines" (T.ptr bn_functiongraphblock   @-> T.ptr T.size_t   @-> returning (T.ptr E.bndisassembly_text_line  ))
  let bnget_function_graph_block_outgoing_edges = F.foreign  "BNGetFunctionGraphBlockOutgoingEdges" (T.ptr bn_functiongraphblock   @-> T.ptr T.size_t   @-> returning (T.ptr bn_function_graph_edge  ))
  let bnfree_function_graph_block_outgoing_edge_list = F.foreign  "BNFreeFunctionGraphBlockOutgoingEdgeList" (T.ptr bn_function_graph_edge   @-> T.size_t  @-> returning (T.void ))



  let bncreate_symbol = F.foreign  "BNCreateSymbol" ( E.bn_symbol_type  @-> T.string   @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (T.ptr E.bn_symbol  ))
  let bnnew_symbol_reference = F.foreign  "BNNewSymbolReference" (T.ptr bn_symbol  @-> returning (T.ptr bn_symbol ))
  let bnfree_symbol = F.foreign  "BNFreeSymbol" (T.ptr bn_symbol  @-> returning (T.void ))
  let bnget_symbol_type = F.foreign  "BNGetSymbolType" (T.ptr bn_symbol  @-> returning ( E.bn_symbol_type ))
  let bnget_symbol_short_name = F.foreign  "BNGetSymbolShortName" (T.ptr bn_symbol  @-> returning (T.string  ))
  let bnget_symbol_full_name = F.foreign  "BNGetSymbolFullName" (T.ptr bn_symbol  @-> returning (T.string  ))
  let bnget_symbol_raw_name = F.foreign  "BNGetSymbolRawName" (T.ptr bn_symbol  @-> returning (T.string  ))
  let bnget_symbol_address = F.foreign  "BNGetSymbolAddress" (T.ptr bn_symbol  @-> returning (uint64_t ))
  let bnis_symbol_auto_defined = F.foreign  "BNIsSymbolAutoDefined" (T.ptr bn_symbol @-> returning (T.bool ))
  let bnset_symbol_auto_defined = F.foreign  "BNSetSymbolAutoDefined" (T.ptr bn_symbol  @-> bool  @-> returning (T.void ))
  let bnget_symbol_by_address = F.foreign  "BNGetSymbolByAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.ptr bn_symbol ))
  let bnget_symbol_by_raw_name = F.foreign  "BNGetSymbolByRawName" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.ptr bn_symbol ))
  let bnget_symbols_by_name = F.foreign  "BNGetSymbolsByName" (T.ptr bn_binary_view   @-> T.string   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnget_symbols = F.foreign  "BNGetSymbols" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnget_symbols_in_range = F.foreign  "BNGetSymbolsInRange" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnget_symbols_of_type = F.foreign  "BNGetSymbolsOfType" (T.ptr bn_binary_view   @->  E.bn_symbol_type  @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnget_symbols_of_type_in_range = F.foreign  "BNGetSymbolsOfTypeInRange" (T.ptr bn_binary_view   @->  E.bn_symbol_type  @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnfree_symbol_list = F.foreign  "BNFreeSymbolList" (T.ptr (T.ptr bn_symbol)   @-> T.size_t  @-> returning (T.void ))
  let bndefine_auto_symbol = F.foreign  "BNDefineAutoSymbol" (T.ptr bn_binary_view   @-> T.ptr bn_symbol  @-> returning (T.void ))
  let bnundefine_auto_symbol = F.foreign  "BNUndefineAutoSymbol" (T.ptr bn_binary_view   @-> T.ptr bn_symbol   @-> returning (T.void ))
  let bndefine_user_symbol = F.foreign  "BNDefineUserSymbol" (T.ptr bn_binary_view   @-> T.ptr bn_symbol   @-> returning (T.void ))
  let bnundefine_user_symbol = F.foreign  "BNUndefineUserSymbol" (T.ptr bn_binary_view   @-> T.ptr bn_symbol   @-> returning (T.void ))
  let bndefine_imported_function = F.foreign  "BNDefineImportedFunction" (T.ptr bn_binary_view   @-> T.ptr bn_symbol   @-> T.ptr bn_function   @-> returning (T.void ))
  let bndefine_auto_symbol_and_variable_or_function = F.foreign  "BNDefineAutoSymbolAndVariableOrFunction" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @-> T.ptr E.bn_symbol   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnimported_function_from_import_address_symbol = F.foreign  "BNImportedFunctionFromImportAddressSymbol" (T.ptr E.bn_symbol   @->T.uint64_t  @-> returning (T.ptr E.bn_symbol  ))
  let bncreate_low_level_ilfunction = F.foreign  "BNCreateLowLevelILFunction" (T.ptr bn_architecture   @-> T.ptr bn_function   @-> returning (T.ptr E.bn_lowlevelilfunction  ))
  let bnnew_low_level_ilfunction_reference = F.foreign  "BNNewLowLevelILFunctionReference" (T.ptr E.bn_lowlevelilfunction   @-> returning (T.ptr E.bn_lowlevelilfunction  ))
  let bnfree_low_level_ilfunction = F.foreign  "BNFreeLowLevelILFunction" (T.ptr E.bn_lowlevelilfunction   @-> returning (T.void ))
  let bnlow_level_ilget_current_address = F.foreign  "BNLowLevelILGetCurrentAddress" (T.ptr E.bn_lowlevelilfunction   @-> returning (uint64_t ))
  let bnlow_level_ilset_current_address = F.foreign  "BNLowLevelILSetCurrentAddress" (T.ptr E.bn_lowlevelilfunction @-> T.ptr bn_architecture @-> T.uint64_t  @-> returning (T.void ))
  let bnlow_level_ilget_instruction_start = F.foreign  "BNLowLevelILGetInstructionStart" (T.ptr E.bn_lowlevelilfunction @-> T.ptr bn_architecture @-> T.uint64_t @-> returning (T.size_t))
  let bnlow_level_ilclear_indirect_branches = F.foreign  "BNLowLevelILClearIndirectBranches" (T.ptr E.bn_lowlevelilfunction   @-> returning (T.void ))
  let bnlow_level_ilset_indirect_branches = F.foreign  "BNLowLevelILSetIndirectBranches" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr bnarchitecture_and_address   @-> T.size_t  @-> returning (T.void ))
  let bnlow_level_iladd_expr = F.foreign  "BNLowLevelILAddExpr"
      (T.ptr bn_lowlevelilfunction @-> bn_low_level_il_operation @-> T.size_t @-> T.uint32_t @-> T.uint64_t @-> T.uint64_t @-> T.uint64_t @-> T.uint64_t @-> returning (T.size_t ))
  let bnlow_level_ilset_expr_source_operand = F.foreign  "BNLowLevelILSetExprSourceOperand" (T.ptr E.bn_lowlevelilfunction   @-> T.size_t  @->T.uint32_t  @-> returning (T.void ))
  let bnlow_level_iladd_instruction = F.foreign  "BNLowLevelILAddInstruction" (T.ptr bn_lowlevelilfunction @-> T.size_t @-> returning (T.size_t))
  let bnlow_level_ilgoto = F.foreign  "BNLowLevelILGoto" (T.ptr bn_lowlevelilfunction @-> T.ptr bn_low_level_il_label @-> returning (T.size_t ))
  let bnlow_level_ilif = F.foreign  "BNLowLevelILIf" (T.ptr bn_lowlevelilfunction @-> T.uint64_t @-> T.ptr bn_low_level_il_label @-> T.ptr bn_low_level_il_label @-> returning T.size_t )
  let bnlow_level_ilinit_label = F.foreign  "BNLowLevelILInitLabel" (T.ptr bn_low_level_il_label   @-> returning (T.void ))
  let bnlow_level_ilmark_label = F.foreign  "BNLowLevelILMarkLabel" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr bn_low_level_il_label   @-> returning (T.void ))
  let bnfinalize_low_level_ilfunction = F.foreign  "BNFinalizeLowLevelILFunction" (T.ptr E.bn_lowlevelilfunction   @-> returning (T.void ))
  let bnlow_level_iladd_label_list = F.foreign  "BNLowLevelILAddLabelList" (T.ptr bn_lowlevelilfunction @-> T.ptr (T.ptr bn_low_level_il_label ) @-> T.size_t @-> returning (T.size_t ))
  let bnlow_level_iladd_operand_list = F.foreign  "BNLowLevelILAddOperandList" (T.ptr bn_lowlevelilfunction @-> T.ptr T.uint64_t @-> T.size_t @-> returning (T.size_t ))
  let bnlow_level_ilget_operand_list = F.foreign  "BNLowLevelILGetOperandList" (T.ptr E.bn_lowlevelilfunction   @-> T.size_t  @-> T.size_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint64_t  ))
  let bnlow_level_ilfree_operand_list = F.foreign  "BNLowLevelILFreeOperandList" (T.ptr T.uint64_t   @-> returning (T.void ))
  let bnget_low_level_ilby_index = F.foreign  "BNGetLowLevelILByIndex" (T.ptr E.bn_lowlevelilfunction   @-> T.size_t  @-> returning (bn_low_level_il_instruction ))
  let bnget_low_level_ilindex_for_instruction = F.foreign  "BNGetLowLevelILIndexForInstruction" (T.ptr bn_lowlevelilfunction @-> T.size_t @-> returning (T.size_t ))
  let bnget_low_level_ilinstruction_count = F.foreign  "BNGetLowLevelILInstructionCount" (T.ptr bn_lowlevelilfunction @->returning (T.size_t ))
  let bnget_low_level_ilexpr_count = F.foreign  "BNGetLowLevelILExprCount" (T.ptr bn_lowlevelilfunction @-> returning (T.size_t))

  let bnadd_low_level_illabel_for_address = F.foreign  "BNAddLowLevelILLabelForAddress" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr bn_architecture   @->T.uint64_t  @-> returning (T.void ))
  let bnget_low_level_illabel_for_address = F.foreign  "BNGetLowLevelILLabelForAddress" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr bn_architecture   @->T.uint64_t  @-> returning (T.ptr bn_low_level_il_label  ))
  let bnget_low_level_ilexpr_text = F.foreign  "BNGetLowLevelILExprText" (T.ptr bn_lowlevelilfunction @-> T.ptr bn_architecture @-> T.size_t @-> T.ptr (T.ptr bninstruction_text_token) @-> T.ptr T.size_t @-> returning (T.bool ))
  let bnget_low_level_ilinstruction_text = F.foreign  "BNGetLowLevelILInstructionText"  (T.ptr bn_lowlevelilfunction @-> T.ptr bn_function @-> T.ptr bn_architecture @-> T.size_t @-> T.ptr (T.ptr bninstruction_text_token) @-> T.ptr T.size_t @-> returning (T.bool ))
  let bnget_low_level_iltemporary_register_count = F.foreign  "BNGetLowLevelILTemporaryRegisterCount" (T.ptr E.bn_lowlevelilfunction   @-> returning (uint32_t ))
  let bnget_low_level_iltemporary_flag_count = F.foreign  "BNGetLowLevelILTemporaryFlagCount" (T.ptr E.bn_lowlevelilfunction   @-> returning (uint32_t ))
  let bnget_low_level_ilbasic_block_list = F.foreign  "BNGetLowLevelILBasicBlockList" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_basicblock)))


  let bnget_low_level_ilssaform = F.foreign  "BNGetLowLevelILSSAForm"
      ( T.ptr ( bn_lowlevelilfunction )  @-> returning (T.ptr ( bn_lowlevelilfunction ) ))

  let bnget_low_level_ilnon_ssaform = F.foreign  "BNGetLowLevelILNonSSAForm"
      (T.ptr ( bn_lowlevelilfunction )  @-> returning (T.ptr ( bn_lowlevelilfunction ) ))

  let bnget_low_level_ilssainstruction_index = F.foreign  "BNGetLowLevelILSSAInstructionIndex"
      (T.ptr (bn_lowlevelilfunction) @-> T.size_t @-> returning (T.size_t ))

  let bnget_low_level_ilnon_ssainstruction_index = F.foreign  "BNGetLowLevelILNonSSAInstructionIndex"
      (T.ptr (bn_lowlevelilfunction) @-> T.size_t @-> returning (T.size_t ))

  let bnget_low_level_ilssaexpr_index = F.foreign  "BNGetLowLevelILSSAExprIndex"
      (T.ptr (bn_lowlevelilfunction) @-> T.size_t @-> returning (T.size_t ))

  let bnget_low_level_ilnon_ssaexpr_index = F.foreign  "BNGetLowLevelILNonSSAExprIndex"
      (T.ptr (bn_lowlevelilfunction) @-> T.size_t @-> returning (T.size_t ))

  let bnget_low_level_ilssaregister_definition = F.foreign  "BNGetLowLevelILSSARegisterDefinition"
      (T.ptr bn_lowlevelilfunction @-> T.uint32_t @-> T.size_t @-> returning T.size_t)

  let bnget_low_level_ilssaflag_definition = F.foreign  "BNGetLowLevelILSSAFlagDefinition"
      (T.ptr bn_lowlevelilfunction @-> T.uint32_t @-> T.size_t @-> returning T.size_t)

  let bnget_low_level_ilssamemory_definition = F.foreign  "BNGetLowLevelILSSAMemoryDefinition"
      (T.ptr bn_lowlevelilfunction @-> T.size_t @-> returning T.size_t)

  let bnget_low_level_ilssaregister_uses = F.foreign  "BNGetLowLevelILSSARegisterUses"
      (T.ptr bn_lowlevelilfunction @->  T.uint32_t @->  T.size_t @-> T.ptr T.size_t @-> returning (T.ptr (T.size_t ) ))

  let bnget_low_level_ilssaflag_uses = F.foreign  "BNGetLowLevelILSSAFlagUses"
      (T.ptr bn_lowlevelilfunction @->  T.uint32_t @->  T.size_t @-> T.ptr T.size_t @-> returning (T.ptr (T.size_t ) ))

  let bnget_low_level_ilssamemory_uses = F.foreign  "BNGetLowLevelILSSAMemoryUses"
      (T.ptr bn_lowlevelilfunction @-> T.size_t @-> T.ptr T.size_t @-> returning (T.ptr (T.size_t ) ))

  let bnget_low_level_ilssaregister_value = F.foreign  "BNGetLowLevelILSSARegisterValue"
      (T.ptr ( bn_lowlevelilfunction ) @-> T.uint32_t @-> T.size_t @-> returning ( bn_register_value ))

  let bnget_low_level_ilssaflag_value = F.foreign  "BNGetLowLevelILSSAFlagValue"
      (T.ptr (bn_lowlevelilfunction) @-> T.uint32_t @-> T.size_t @-> returning (bn_register_value))

  let bnget_low_level_ilexpr_value = F.foreign  "BNGetLowLevelILExprValue"
      (T.ptr ( bn_lowlevelilfunction ) @-> T.size_t @-> returning (bn_register_value))

  let bnget_low_level_ilpossible_expr_values = F.foreign  "BNGetLowLevelILPossibleExprValues"
      (T.ptr (bn_lowlevelilfunction) @-> T.size_t @-> returning (bnpossible_value_set))

  let bnget_low_level_ilregister_value_at_instruction = F.foreign "BNGetLowLevelILRegisterValueAtInstruction"
      (T.ptr (bn_lowlevelilfunction) @-> T.uint32_t @-> T.size_t @-> returning (bn_register_value))

  let bnget_low_level_ilregister_value_after_instruction = F.foreign  "BNGetLowLevelILRegisterValueAfterInstruction"
      (T.ptr (bn_lowlevelilfunction) @-> T.uint32_t @-> T.size_t @-> returning ( bn_register_value ))

  let bnget_low_level_ilpossible_register_values_at_instruction = F.foreign  "BNGetLowLevelILPossibleRegisterValuesAtInstruction"
      (T.ptr (bn_lowlevelilfunction) @-> T.uint32_t  @->  T.size_t @-> returning (bnpossible_value_set))

  let bnget_low_level_ilpossible_register_values_after_instruction = F.foreign  "BNGetLowLevelILPossibleRegisterValuesAfterInstruction"
      (T.ptr (bn_lowlevelilfunction) @-> T.uint32_t  @->  T.size_t  @-> returning (bnpossible_value_set))

  let bnget_low_level_ilflag_value_at_instruction = F.foreign  "BNGetLowLevelILFlagValueAtInstruction"
      (T.ptr ( bn_lowlevelilfunction ) @-> T.uint32_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_low_level_ilflag_value_after_instruction = F.foreign  "BNGetLowLevelILFlagValueAfterInstruction"
      (T.ptr ( bn_lowlevelilfunction )  @-> T.uint32_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_low_level_ilpossible_flag_values_at_instruction = F.foreign  "BNGetLowLevelILPossibleFlagValuesAtInstruction"
      (T.ptr ( bn_lowlevelilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_low_level_ilpossible_flag_values_after_instruction = F.foreign  "BNGetLowLevelILPossibleFlagValuesAfterInstruction"
      (T.ptr ( bn_lowlevelilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_low_level_ilstack_contents_at_instruction = F.foreign  "BNGetLowLevelILStackContentsAtInstruction"
      (T.ptr ( bn_lowlevelilfunction )  @->   T.int64_t  @->  T.size_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_low_level_ilstack_contents_after_instruction = F.foreign  "BNGetLowLevelILStackContentsAfterInstruction"
      (T.ptr ( bn_lowlevelilfunction )  @->   int64_t  @->  T.size_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_low_level_ilpossible_stack_contents_at_instruction = F.foreign  "BNGetLowLevelILPossibleStackContentsAtInstruction"
      (T.ptr ( bn_lowlevelilfunction )  @->   int64_t  @->  T.size_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_low_level_ilpossible_stack_contents_after_instruction = F.foreign  "BNGetLowLevelILPossibleStackContentsAfterInstruction"
      (T.ptr ( bn_lowlevelilfunction )  @->   int64_t  @->  T.size_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_medium_level_ilfor_low_level_il = F.foreign  "BNGetMediumLevelILForLowLevelIL"
      (T.ptr ( bn_lowlevelilfunction )  @-> returning (T.ptr ( bn_medium_level_ilfunction ) ))

  let bnget_mapped_medium_level_il = F.foreign  "BNGetMappedMediumLevelIL"
      (T.ptr ( bn_lowlevelilfunction )  @-> returning (T.ptr ( bn_medium_level_ilfunction ) ))

  let bnget_mapped_medium_level_ilinstruction_index = F.foreign  "BNGetMappedMediumLevelILInstructionIndex"
      (T.ptr bn_lowlevelilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_mapped_medium_level_ilexpr_index = F.foreign  "BNGetMappedMediumLevelILExprIndex"
      (T.ptr bn_lowlevelilfunction @-> T.size_t @-> returning (T.size_t ))

  let bncreate_medium_level_ilfunction = F.foreign  "BNCreateMediumLevelILFunction"
      (T.ptr ( bn_architecture )  @->  T.ptr ( bn_function )  @-> returning (T.ptr ( bn_medium_level_ilfunction ) ))

  let bnnew_medium_level_ilfunction_reference = F.foreign  "BNNewMediumLevelILFunctionReference"
      (T.ptr ( bn_medium_level_ilfunction )  @-> returning (T.ptr ( bn_medium_level_ilfunction ) ))

  let bnfree_medium_level_ilfunction = F.foreign  "BNFreeMediumLevelILFunction"
      (T.ptr ( bn_medium_level_ilfunction )  @-> returning (T.void ))

  let bnmedium_level_ilget_current_address = F.foreign  "BNMediumLevelILGetCurrentAddress"
      (T.ptr (bn_medium_level_ilfunction )  @-> returning (T.uint64_t))

  let bnmedium_level_ilset_current_address = F.foreign  "BNMediumLevelILSetCurrentAddress"
      (T.ptr (bn_medium_level_ilfunction)  @->  T.ptr (bn_architecture)  @-> T.uint64_t @-> returning (T.void ))

  let bnmedium_level_ilget_instruction_start = F.foreign  "BNMediumLevelILGetInstructionStart"
      (T.ptr bn_medium_level_ilfunction @-> T.ptr bn_architecture @-> T.uint64_t @-> returning (T.size_t ))
  let bnmedium_level_iladd_expr = F.foreign  "BNMediumLevelILAddExpr"
      (T.ptr bn_medium_level_ilfunction @-> bnmediumleveliloperation @-> T.size_t @-> T.uint64_t @-> T.uint64_t @-> T.uint64_t @-> T.uint64_t @-> T.uint64_t @-> returning (T.size_t ))

  let bnmedium_level_iladd_instruction = F.foreign  "BNMediumLevelILAddInstruction"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnmedium_level_ilgoto = F.foreign  "BNMediumLevelILGoto"
      (T.ptr bn_medium_level_ilfunction @-> T.ptr bnmedium_level_illabel @-> returning (T.size_t ))

  let bnmedium_level_ilif = F.foreign  "BNMediumLevelILIf"
      (T.ptr bn_medium_level_ilfunction @-> T.uint64_t @-> T.ptr bnmedium_level_illabel @-> T.ptr bnmedium_level_illabel @-> returning (T.size_t ))
  let bnmedium_level_ilinit_label = F.foreign  "BNMediumLevelILInitLabel" ( T.ptr ( bnmedium_level_illabel )  @-> returning (T.void ))
  let bnmedium_level_ilmark_label = F.foreign  "BNMediumLevelILMarkLabel" ( T.ptr ( bn_medium_level_ilfunction )  @->  T.ptr ( bnmedium_level_illabel )  @-> returning (T.void ))
  let bnfinalize_medium_level_ilfunction = F.foreign  "BNFinalizeMediumLevelILFunction"
      (T.ptr (bn_medium_level_ilfunction )  @-> returning (T.void ))

  let bnmedium_level_iladd_label_list = F.foreign  "BNMediumLevelILAddLabelList"
      (T.ptr bn_medium_level_ilfunction @-> T.ptr (T.ptr bnmedium_level_illabel) @-> T.size_t @-> returning (T.size_t ))
  let bnmedium_level_iladd_operand_list = F.foreign  "BNMediumLevelILAddOperandList"
      (T.ptr bn_medium_level_ilfunction @-> T.ptr uint64_t @-> T.size_t @-> returning (T.size_t ))

  let bnmedium_level_ilget_operand_list = F.foreign  "BNMediumLevelILGetOperandList"
      (T.ptr (bn_medium_level_ilfunction) @->  T.size_t  @->  T.size_t  @->  T.ptr (T.size_t )  @-> returning (T.ptr (uint64_t)))

  let bnmedium_level_ilfree_operand_list = F.foreign  "BNMediumLevelILFreeOperandList"
      (T.ptr uint64_t @-> returning (T.void ))

  let bnget_medium_level_ilby_index = F.foreign  "BNGetMediumLevelILByIndex"
      (T.ptr ( bn_medium_level_ilfunction )  @->  T.size_t  @-> returning ( bnmedium_level_ilinstruction ))

  let bnget_medium_level_ilindex_for_instruction = F.foreign  "BNGetMediumLevelILIndexForInstruction"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilinstruction_for_expr = F.foreign  "BNGetMediumLevelILInstructionForExpr"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilinstruction_count = F.foreign  "BNGetMediumLevelILInstructionCount"
      (T.ptr bn_medium_level_ilfunction @-> returning (T.size_t ))

  let bnget_medium_level_ilexpr_count = F.foreign  "BNGetMediumLevelILExprCount"
      (T.ptr bn_medium_level_ilfunction @-> returning (T.size_t ))

  let bnget_medium_level_ilexpr_text = F.foreign  "BNGetMediumLevelILExprText"
      ( T.ptr (bn_medium_level_ilfunction )  @->
        T.ptr ( bn_architecture )  @->
        T.size_t  @->
        T.ptr (T.ptr ( bninstruction_text_token )) @->
        T.ptr (T.size_t )  @->
        returning (T.bool ))

  let bnget_medium_level_ilinstruction_text = F.foreign  "BNGetMediumLevelILInstructionText"
      (T.ptr (bn_medium_level_ilfunction )  @->
       T.ptr (bn_function)  @->
       T.ptr (bn_architecture)  @->
       T.size_t  @->
       T.ptr (T.ptr ( bninstruction_text_token )) @->
       T.ptr (T.size_t )  @->
       returning (T.bool ))

  let bnget_medium_level_ilbasic_block_list = F.foreign  "BNGetMediumLevelILBasicBlockList"
      (T.ptr ( bn_medium_level_ilfunction )  @->
       T.ptr (T.size_t )  @->
       returning (T.ptr (T.ptr ( bn_basicblock))))

  let bnget_medium_level_ilssaform = F.foreign  "BNGetMediumLevelILSSAForm"
      (T.ptr ( bn_medium_level_ilfunction )  @-> returning (T.ptr (bn_medium_level_ilfunction)))

  let bnget_medium_level_ilnon_ssaform = F.foreign  "BNGetMediumLevelILNonSSAForm"
      (T.ptr ( bn_medium_level_ilfunction )  @-> returning (T.ptr ( bn_medium_level_ilfunction ) ))

  let bnget_medium_level_ilssainstruction_index = F.foreign  "BNGetMediumLevelILSSAInstructionIndex"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilnon_ssainstruction_index = F.foreign  "BNGetMediumLevelILNonSSAInstructionIndex"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilssaexpr_index = F.foreign  "BNGetMediumLevelILSSAExprIndex"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilnon_ssaexpr_index = F.foreign  "BNGetMediumLevelILNonSSAExprIndex"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilssavar_definition = F.foreign  "BNGetMediumLevelILSSAVarDefinition"
      (T.ptr bn_medium_level_ilfunction @-> T.ptr bnvariable @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilssamemory_definition = F.foreign  "BNGetMediumLevelILSSAMemoryDefinition"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilssavar_uses = F.foreign  "BNGetMediumLevelILSSAVarUses"
      (T.ptr bn_medium_level_ilfunction @-> T.ptr bnvariable @-> T.size_t @-> T.ptr T.size_t @-> returning (T.ptr (T.size_t ) ))

  let bnget_medium_level_ilssamemory_uses = F.foreign  "BNGetMediumLevelILSSAMemoryUses"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> T.ptr T.size_t @-> returning (T.ptr (T.size_t ) ))

  let bnget_medium_level_ilssavar_value = F.foreign  "BNGetMediumLevelILSSAVarValue"
      (T.ptr (bn_medium_level_ilfunction)  @->  T.ptr bnvariable @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_medium_level_ilexpr_value = F.foreign  "BNGetMediumLevelILExprValue"
      (T.ptr (bn_medium_level_ilfunction)  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_medium_level_ilpossible_ssavar_values = F.foreign  "BNGetMediumLevelILPossibleSSAVarValues"
      (T.ptr (bn_medium_level_ilfunction)  @->  T.ptr bnvariable  @->  T.size_t  @->  T.size_t  @-> returning (bnpossible_value_set))

  let bnget_medium_level_ilpossible_expr_values = F.foreign  "BNGetMediumLevelILPossibleExprValues"
      (T.ptr (bn_medium_level_ilfunction)  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_medium_level_ilssavar_version_at_ilinstruction = F.foreign  "BNGetMediumLevelILSSAVarVersionAtILInstruction"
      (T.ptr bn_medium_level_ilfunction @-> T.ptr bnvariable @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilssamemory_version_at_ilinstruction = F.foreign  "BNGetMediumLevelILSSAMemoryVersionAtILInstruction"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_medium_level_ilvariable_for_register_at_instruction = F.foreign  "BNGetMediumLevelILVariableForRegisterAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bnvariable ))

  let bnget_medium_level_ilvariable_for_flag_at_instruction = F.foreign  "BNGetMediumLevelILVariableForFlagAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bnvariable ))

  let bnget_medium_level_ilvariable_for_stack_location_at_instruction = F.foreign  "BNGetMediumLevelILVariableForStackLocationAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   int64_t  @->  T.size_t  @-> returning ( bnvariable ))

  let bnget_medium_level_ilregister_value_at_instruction = F.foreign  "BNGetMediumLevelILRegisterValueAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_medium_level_ilregister_value_after_instruction = F.foreign  "BNGetMediumLevelILRegisterValueAfterInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_medium_level_ilpossible_register_values_at_instruction = F.foreign  "BNGetMediumLevelILPossibleRegisterValuesAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_medium_level_ilpossible_register_values_after_instruction = F.foreign  "BNGetMediumLevelILPossibleRegisterValuesAfterInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_medium_level_ilflag_value_at_instruction = F.foreign  "BNGetMediumLevelILFlagValueAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_medium_level_ilflag_value_after_instruction = F.foreign  "BNGetMediumLevelILFlagValueAfterInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_medium_level_ilpossible_flag_values_at_instruction = F.foreign  "BNGetMediumLevelILPossibleFlagValuesAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_medium_level_ilpossible_flag_values_after_instruction = F.foreign  "BNGetMediumLevelILPossibleFlagValuesAfterInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   T.uint32_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_medium_level_ilstack_contents_at_instruction = F.foreign  "BNGetMediumLevelILStackContentsAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   int64_t  @->  T.size_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_medium_level_ilstack_contents_after_instruction = F.foreign  "BNGetMediumLevelILStackContentsAfterInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   int64_t  @->  T.size_t  @->  T.size_t  @-> returning ( bn_register_value ))

  let bnget_medium_level_ilpossible_stack_contents_at_instruction = F.foreign  "BNGetMediumLevelILPossibleStackContentsAtInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   int64_t  @->  T.size_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_medium_level_ilpossible_stack_contents_after_instruction = F.foreign  "BNGetMediumLevelILPossibleStackContentsAfterInstruction"
      (T.ptr ( bn_medium_level_ilfunction )  @->   int64_t  @->  T.size_t  @->  T.size_t  @-> returning ( bnpossible_value_set ))

  let bnget_medium_level_ilbranch_dependence = F.foreign  "BNGetMediumLevelILBranchDependence" (T.ptr ( bn_medium_level_ilfunction )  @->  T.size_t  @->  T.size_t  @-> returning ( bnilbranchdependence ))

  let bnget_all_medium_level_ilbranch_dependence = F.foreign  "BNGetAllMediumLevelILBranchDependence"
      (T.ptr ( bn_medium_level_ilfunction )  @->  T.size_t  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bnilbranch_instruction_and_dependence ) ))
  let bnfree_ilbranch_dependence_list = F.foreign  "BNFreeILBranchDependenceList" ( T.ptr ( bnilbranch_instruction_and_dependence )  @-> returning (T.void ))
  let bnget_low_level_ilfor_medium_level_il = F.foreign  "BNGetLowLevelILForMediumLevelIL"
      (T.ptr ( bn_medium_level_ilfunction )  @-> returning (T.ptr ( bn_lowlevelilfunction ) ))

  let bnget_low_level_ilinstruction_index = F.foreign  "BNGetLowLevelILInstructionIndex"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))

  let bnget_low_level_ilexpr_index = F.foreign  "BNGetLowLevelILExprIndex"
      (T.ptr bn_medium_level_ilfunction @-> T.size_t @-> returning (T.size_t ))


  let bncreate_void_type = F.foreign  "BNCreateVoidType" (T.void @-> returning (T.ptr bn_type  ))
  let bncreate_bool_type = F.foreign  "BNCreateBoolType" (T.void @-> returning (T.ptr bn_type  ))
  let bncreate_integer_type = F.foreign  "BNCreateIntegerType" (T.size_t @-> T.bool  @-> T.string   @-> returning (T.ptr bn_type  ))
  let bncreate_float_type = F.foreign  "BNCreateFloatType" (T.size_t @-> T.string   @-> returning (T.ptr bn_type  ))
  let bncreate_structure_type = F.foreign  "BNCreateStructureType" (T.ptr bn_structure   @-> returning (T.ptr bn_type  ))
  let bncreate_enumeration_type = F.foreign  "BNCreateEnumerationType" (T.ptr bn_architecture   @-> T.ptr bn_enumeration   @-> T.size_t  @-> T.bool  @-> returning (T.ptr bn_type  ))
  let bncreate_pointer_type = F.foreign  "BNCreatePointerType" (T.ptr bn_architecture   @-> T.ptr bn_type   @-> T.bool  @-> T.bool  @-> E.bnreferencetype  @-> returning (T.ptr bn_type  ))

  let bncreate_pointer_type_of_width = F.foreign  "BNCreatePointerTypeOfWidth"
      (T.size_t @->  T.ptr (bn_type) @-> T.bool  @->  T.bool  @->   bnreferencetype  @-> returning (T.ptr (bn_type) ))
  
  let bncreate_array_type = F.foreign  "BNCreateArrayType" (T.ptr bn_type   @->T.uint64_t  @-> returning (T.ptr bn_type  ))
  let bncreate_function_type = F.foreign  "BNCreateFunctionType" (T.ptr bn_type   @-> T.ptr bn_callingconvention   @-> T.ptr bnname_and_type   @-> T.size_t  @-> bool  @-> returning (T.ptr bn_type  ))
  let bnnew_type_reference = F.foreign  "BNNewTypeReference" (T.ptr bn_type   @-> returning (T.ptr bn_type  ))
  let bnduplicate_type = F.foreign  "BNDuplicateType" (T.ptr bn_type   @-> returning (T.ptr bn_type))
  let bnget_type_and_name = F.foreign  "BNGetTypeAndName" (T.ptr bn_type @-> T.ptr bnqualified_name @-> returning (T.string  ))
  let bnfree_type = F.foreign  "BNFreeType" (T.ptr bn_type   @-> returning (T.void ))
  let bntype_get_type_name = F.foreign  "BNTypeGetTypeName" (T.ptr ( bn_type )  @-> returning ( bnqualified_name ))
  let bntype_set_type_name = F.foreign  "BNTypeSetTypeName" (T.ptr ( bn_type )  @->  T.ptr ( bnqualified_name )  @-> returning (T.void ))
  let bnget_type_class = F.foreign  "BNGetTypeClass" (T.ptr bn_type   @-> returning (bn_type_class ))
  let bnget_type_width = F.foreign  "BNGetTypeWidth" (T.ptr bn_type   @-> returning (uint64_t ))
  let bnget_type_alignment = F.foreign  "BNGetTypeAlignment" (T.ptr bn_type @-> returning (T.size_t ))
  let bnis_type_signed = F.foreign  "BNIsTypeSigned" (T.ptr bn_type @-> returning (T.bool ))
  let bnis_type_const = F.foreign  "BNIsTypeConst" (T.ptr bn_type @-> returning (T.bool ))
  let bnis_type_volatile = F.foreign  "BNIsTypeVolatile" (T.ptr bn_type @-> returning (T.bool ))
  let bnis_type_floating_point = F.foreign  "BNIsTypeFloatingPoint" (T.ptr bn_type @-> returning (T.bool ))
  let bnget_child_type = F.foreign  "BNGetChildType" (T.ptr bn_type   @-> returning (T.ptr bn_type  ))
  let bnget_type_calling_convention = F.foreign  "BNGetTypeCallingConvention" (T.ptr bn_type   @-> returning (T.ptr E.bn_callingconvention  ))
  let bnget_type_parameters = F.foreign  "BNGetTypeParameters" (T.ptr bn_type   @-> T.ptr T.size_t   @-> returning (T.ptr bnname_and_type  ))
  let bnfree_type_parameter_list = F.foreign  "BNFreeTypeParameterList" (T.ptr E.bnname_and_type   @-> T.size_t  @-> returning (T.void ))
  let bntype_has_variable_arguments = F.foreign  "BNTypeHasVariableArguments" (T.ptr bn_type @-> returning (T.bool ))
  let bnfunction_type_can_return = F.foreign  "BNFunctionTypeCanReturn" (T.ptr bn_type @-> returning (T.bool ))
  let bnget_type_structure = F.foreign  "BNGetTypeStructure" (T.ptr bn_type   @-> returning (T.ptr bn_structure  ))
  let bnget_type_enumeration = F.foreign  "BNGetTypeEnumeration" (T.ptr bn_type   @-> returning (T.ptr bn_enumeration  ))
  let bnget_type_named_type_reference = F.foreign  "BNGetTypeNamedTypeReference"
      (T.ptr (bn_type)  @-> returning (T.ptr ( bnnamed_type_reference ) ))
  let bnget_type_element_count = F.foreign  "BNGetTypeElementCount" (T.ptr bn_type   @-> returning (T.uint64_t ))
  let bnset_function_can_return = F.foreign  "BNSetFunctionCanReturn" (T.ptr bn_type   @-> T.bool  @-> returning (T.void ))
  let bntype_get_member_scope = F.foreign  "BNTypeGetMemberScope" (T.ptr (bn_type) @-> returning ( bnmemberscope ))
  let bntype_set_member_scope = F.foreign  "BNTypeSetMemberScope" (T.ptr (bn_type) @->   bnmemberscope  @-> returning (T.void ))
  let bntype_get_member_access = F.foreign  "BNTypeGetMemberAccess" (T.ptr (bn_type) @-> returning ( bnmemberaccess ))
  let bntype_set_member_access = F.foreign  "BNTypeSetMemberAccess" (T.ptr (bn_type) @-> bnmemberaccess  @-> returning (T.void ))
  let bntype_set_const = F.foreign  "BNTypeSetConst" (T.ptr ( bn_type )  @-> T.bool @-> returning (T.void ))
  let bntype_set_volatile = F.foreign  "BNTypeSetVolatile" ( T.ptr ( bn_type )  @->  T.bool  @-> returning (T.void ))

  let bnget_type_string = F.foreign  "BNGetTypeString" (T.ptr bn_type   @-> returning (T.string  ))
  let bnget_type_string_before_name = F.foreign  "BNGetTypeStringBeforeName" (T.ptr bn_type   @-> returning (T.string  ))
  let bnget_type_string_after_name = F.foreign  "BNGetTypeStringAfterName" (T.ptr bn_type   @-> returning (T.string  ))

  let bnget_type_tokens = F.foreign  "BNGetTypeTokens"
      (T.ptr ( bn_type )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bninstruction_text_token ) ))

  let bnget_type_tokens_before_name = F.foreign  "BNGetTypeTokensBeforeName"
      (T.ptr ( bn_type )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bninstruction_text_token ) ))

  let bnget_type_tokens_after_name = F.foreign  "BNGetTypeTokensAfterName"
      (T.ptr ( bn_type )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bninstruction_text_token ) ))

  let bnfree_token_list = F.foreign  "BNFreeTokenList"
      ( T.ptr ( bninstruction_text_token )  @->  T.size_t  @-> returning (T.void ))
      
  let bncreate_named_type_reference = F.foreign  "BNCreateNamedTypeReference"
      (T.ptr ( bnnamed_type_reference )  @->  T.size_t  @->  T.size_t  @-> returning (T.ptr ( bn_type ) ))

  let bncreate_named_type_reference_from_type_and_id = F.foreign  "BNCreateNamedTypeReferenceFromTypeAndId"
      (T.string  @->  T.ptr ( bnqualified_name )  @->  T.ptr ( bn_type )  @-> returning (T.ptr ( bn_type ) ))

  let bncreate_named_type_reference_from_type = F.foreign  "BNCreateNamedTypeReferenceFromType"
      (T.ptr ( bn_binary_view )  @->  T.ptr ( bnqualified_name )  @-> returning (T.ptr ( bn_type ) ))

  let bncreate_named_type = F.foreign  "BNCreateNamedType"
      (T.void @-> returning (T.ptr ( bnnamed_type_reference ) ))
      
  let bnset_type_reference_class = F.foreign  "BNSetTypeReferenceClass"
      (T.ptr ( bnnamed_type_reference )  @-> bnnamedtypereferenceclass  @-> returning (T.void ))

  let bnget_type_reference_class = F.foreign  "BNGetTypeReferenceClass"
      (T.ptr ( bnnamed_type_reference )  @-> returning ( bnnamedtypereferenceclass ))

  let bnset_type_reference_id = F.foreign  "BNSetTypeReferenceId"
      (T.ptr ( bnnamed_type_reference )  @->  T.string  @-> returning (T.void ))

  let bnget_type_reference_id = F.foreign  "BNGetTypeReferenceId"
      ( T.ptr ( bnnamed_type_reference )  @-> returning (T.string ))

  let bnset_type_reference_name = F.foreign  "BNSetTypeReferenceName"
      ( T.ptr ( bnnamed_type_reference )  @->  T.ptr ( bnqualified_name )  @-> returning (T.void ))

  let bnget_type_reference_name = F.foreign  "BNGetTypeReferenceName"
      (T.ptr ( bnnamed_type_reference )  @-> returning ( bnqualified_name ))

  let bnfree_qualified_name = F.foreign  "BNFreeQualifiedName"
      ( T.ptr ( bnqualified_name )  @-> returning (T.void ))

  let bnfree_named_type_reference = F.foreign  "BNFreeNamedTypeReference"
      ( T.ptr ( bnnamed_type_reference )  @-> returning (T.void ))

  let bnnew_named_type_reference = F.foreign  "BNNewNamedTypeReference"
      (T.ptr ( bnnamed_type_reference )  @-> returning (T.ptr ( bnnamed_type_reference ) ))

  let bncreate_structure = F.foreign  "BNCreateStructure" (T.void @-> returning (T.ptr bn_structure  ))

  let bncreate_structure_with_options = F.foreign  "BNCreateStructureWithOptions"
      (bnstructuretype  @->  T.bool  @-> returning (T.ptr (bn_structure)))

  let bnnew_structure_reference = F.foreign  "BNNewStructureReference" (T.ptr bn_structure   @-> returning (T.ptr bn_structure  ))
  let bnfree_structure = F.foreign  "BNFreeStructure" (T.ptr bn_structure   @-> returning (T.void ))
  let bnget_structure_members = F.foreign  "BNGetStructureMembers"
      (T.ptr bn_structure   @-> T.ptr T.size_t   @-> returning (T.ptr bnstructure_member  ))
  let bnfree_structure_member_list = F.foreign  "BNFreeStructureMemberList" (T.ptr bnstructure_member   @-> T.size_t  @-> returning (T.void ))
  let bnget_structure_width = F.foreign  "BNGetStructureWidth" (T.ptr bn_structure   @-> returning (T.uint64_t ))

  let bnset_structure_width = F.foreign  "BNSetStructureWidth" ( T.ptr ( bn_structure )  @->   T.uint64_t  @-> returning (T.void ))
  
  let bnget_structure_alignment = F.foreign  "BNGetStructureAlignment" (T.ptr bn_structure @-> returning (T.size_t))
  let bnset_structure_alignment = F.foreign  "BNSetStructureAlignment" ( T.ptr ( bn_structure )  @->  T.size_t  @-> returning (T.void ))
  let bnis_structure_packed = F.foreign  "BNIsStructurePacked" (T.ptr bn_structure @-> returning (T.bool))
  let bnset_structure_packed = F.foreign  "BNSetStructurePacked" (T.ptr bn_structure   @-> T.bool  @-> returning (T.void ))
  let bnis_structure_union = F.foreign  "BNIsStructureUnion" (T.ptr bn_structure @-> returning (T.bool))

  let bnset_structure_type = F.foreign  "BNSetStructureType" ( T.ptr ( bn_structure )  @->   bnstructuretype  @-> returning (T.void ))
  let bnget_structure_type = F.foreign  "BNGetStructureType" ( T.ptr ( bn_structure )  @-> returning ( bnstructuretype ))

  let bnadd_structure_member = F.foreign  "BNAddStructureMember" (T.ptr bn_structure   @-> T.ptr bn_type   @-> T.string   @-> returning (T.void ))
  let bnadd_structure_member_at_offset = F.foreign  "BNAddStructureMemberAtOffset" (T.ptr bn_structure   @-> T.ptr bn_type   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_structure_member = F.foreign  "BNRemoveStructureMember" (T.ptr bn_structure   @-> T.size_t  @-> returning (T.void ))
  let bnreplace_structure_member = F.foreign  "BNReplaceStructureMember"
      ( T.ptr ( bn_structure )  @->  T.size_t  @->  T.ptr ( bn_type )  @->  T.string  @-> returning (T.void ))
  let bncreate_enumeration = F.foreign  "BNCreateEnumeration" (T.void @-> returning (T.ptr bn_enumeration  ))
  let bnnew_enumeration_reference = F.foreign  "BNNewEnumerationReference" (T.ptr bn_enumeration   @-> returning (T.ptr bn_enumeration  ))
  let bnfree_enumeration = F.foreign  "BNFreeEnumeration" (T.ptr bn_enumeration   @-> returning (T.void ))
  let bnget_enumeration_members = F.foreign  "BNGetEnumerationMembers" (T.ptr bn_enumeration   @-> T.ptr T.size_t   @-> returning (T.ptr bnenumeration_member  ))
  let bnfree_enumeration_member_list = F.foreign  "BNFreeEnumerationMemberList" (T.ptr bnenumeration_member   @-> T.size_t  @-> returning (T.void ))
  let bnadd_enumeration_member = F.foreign  "BNAddEnumerationMember" (T.ptr bn_enumeration   @-> T.string   @-> returning (T.void ))
  let bnadd_enumeration_member_with_value = F.foreign  "BNAddEnumerationMemberWithValue" (T.ptr bn_enumeration   @-> T.string   @->T.uint64_t  @-> returning (T.void ))

  let bnremove_enumeration_member = F.foreign  "BNRemoveEnumerationMember"
      ( T.ptr ( bn_enumeration )  @->  T.size_t  @-> returning (T.void ))

  let bnreplace_enumeration_member = F.foreign  "BNReplaceEnumerationMember"
    ( T.ptr ( bn_enumeration )  @->  T.size_t  @->  T.string  @->   uint64_t  @-> returning (T.void ))

  let bnpreprocess_source = F.foreign  "BNPreprocessSource"
      (T.string @-> T.string @-> T.ptr T.string @-> T.ptr T.string @-> T.ptr T.string @-> T.size_t @-> returning T.bool)
  let bnparse_types_from_source = F.foreign  "BNParseTypesFromSource"
      (T.ptr bn_architecture @->
       T.string @->
       T.string @->
       T.ptr bntype_parser_result @->
       T.ptr T.string @->
       T.ptr T.string @->
       T.size_t @->
       T.string @-> 
       returning T.bool )

  let bnparse_types_from_source_file = F.foreign  "BNParseTypesFromSourceFile"
      (T.ptr bn_architecture @-> T.string @-> T.ptr bntype_parser_result @-> T.ptr T.string @-> T.ptr T.string @-> T.size_t @-> T.string @-> returning T.bool )
  let bnfree_type_parser_result = F.foreign  "BNFreeTypeParserResult" (T.ptr bntype_parser_result   @-> returning (T.void ))
  let bnget_update_channels = F.foreign  "BNGetUpdateChannels" (T.ptr T.size_t   @-> T.ptr T.string    @-> returning (T.ptr E.bnupdate_channel  ))
  let bnfree_update_channel_list = F.foreign  "BNFreeUpdateChannelList" (T.ptr E.bnupdate_channel   @-> T.size_t  @-> returning (T.void ))
  let bnget_update_channel_versions = F.foreign  "BNGetUpdateChannelVersions" (T.string   @-> T.ptr T.size_t   @-> T.ptr T.string    @-> returning (T.ptr E.bnupdate_version  ))
  let bnfree_update_channel_version_list = F.foreign  "BNFreeUpdateChannelVersionList" (T.ptr E.bnupdate_version   @-> T.size_t  @-> returning (T.void ))
  let bnare_updates_available = F.foreign  "BNAreUpdatesAvailable" (T.string @-> T.ptr T.string @-> returning (T.bool ))
  let bnupdate_to_version = F.foreign  "BNUpdateToVersion"
      (T.string   @-> T.string   @-> T.ptr T.string @-> T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.uint64_t @-> returning T.bool) @-> T.ptr T.void   @-> returning (bnupdateresult ))
  let bnupdate_to_latest_version = F.foreign  "BNUpdateToLatestVersion" 
      (T.string   @-> T.ptr T.string @-> T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.uint64_t @-> returning T.bool) @-> T.ptr T.void   @-> returning (bnupdateresult ))
  let bnare_auto_updates_enabled = F.foreign  "BNAreAutoUpdatesEnabled" (T.void @-> returning (T.bool))
  let bnset_auto_updates_enabled = F.foreign  "BNSetAutoUpdatesEnabled" (T.bool  @-> returning (T.void ))
  let bnget_time_since_last_update_check = F.foreign  "BNGetTimeSinceLastUpdateCheck" (T.void @-> returning (T.uint64_t ))
  let bnupdates_checked = F.foreign  "BNUpdatesChecked" (T.void @-> returning (T.void ))
  let bnget_active_update_channel = F.foreign  "BNGetActiveUpdateChannel" (T.void @-> returning (T.string  ))
  let bnset_active_update_channel = F.foreign  "BNSetActiveUpdateChannel" (T.string @-> returning (T.void ))
  let bnis_update_installation_pending = F.foreign  "BNIsUpdateInstallationPending" (T.void @-> returning (T.bool ))
  let bninstall_pending_update = F.foreign  "BNInstallPendingUpdate" (T.ptr T.string @-> returning (T.void ))
  let bnget_all_plugin_commands = F.foreign  "BNGetAllPluginCommands" (T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnget_valid_plugin_commands = F.foreign  "BNGetValidPluginCommands" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnget_valid_plugin_commands_for_address = F.foreign  "BNGetValidPluginCommandsForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnget_valid_plugin_commands_for_range = F.foreign  "BNGetValidPluginCommandsForRange" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnget_valid_plugin_commands_for_function = F.foreign  "BNGetValidPluginCommandsForFunction" (T.ptr bn_binary_view   @-> T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnfree_plugin_command_list = F.foreign  "BNFreePluginCommandList" (T.ptr E.bnplugin_command   @-> returning (T.void ))
  let bncreate_calling_convention = F.foreign  "BNCreateCallingConvention" (T.ptr bn_architecture   @-> T.string   @-> T.ptr E.bncustom_calling_convention   @-> returning (T.ptr E.bn_callingconvention  ))
  let bnregister_calling_convention = F.foreign  "BNRegisterCallingConvention" (T.ptr bn_architecture   @-> T.ptr E.bn_callingconvention   @-> returning (T.void))
  let bnnew_calling_convention_reference = F.foreign  "BNNewCallingConventionReference" (T.ptr E.bn_callingconvention   @-> returning (T.ptr E.bn_callingconvention))
  let bnfree_calling_convention = F.foreign  "BNFreeCallingConvention" (T.ptr E.bn_callingconvention   @-> returning (T.void ))
  let bnget_architecture_calling_conventions = F.foreign  "BNGetArchitectureCallingConventions" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr E.bn_callingconvention)))
  let bnfree_calling_convention_list = F.foreign  "BNFreeCallingConventionList" (T.ptr (T.ptr E.bn_callingconvention) @-> T.size_t  @-> returning (T.void ))
  let bnget_architecture_calling_convention_by_name = F.foreign  "BNGetArchitectureCallingConventionByName" (T.ptr bn_architecture   @-> T.string   @-> returning (T.ptr E.bn_callingconvention))
  let bnget_calling_convention_architecture = F.foreign  "BNGetCallingConventionArchitecture" (T.ptr E.bn_callingconvention   @-> returning (T.ptr bn_architecture  ))
  let bnget_calling_convention_name = F.foreign  "BNGetCallingConventionName" (T.ptr E.bn_callingconvention   @-> returning (T.string  ))
  let bnget_caller_saved_registers = F.foreign  "BNGetCallerSavedRegisters" (T.ptr bn_callingconvention   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_integer_argument_registers = F.foreign  "BNGetIntegerArgumentRegisters" (T.ptr bn_callingconvention   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_float_argument_registers = F.foreign  "BNGetFloatArgumentRegisters" (T.ptr bn_callingconvention   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnare_argument_registers_shared_index = F.foreign  "BNAreArgumentRegistersSharedIndex" (T.ptr bn_callingconvention @-> returning (T.bool))
  let bnis_stack_reserved_for_argument_registers = F.foreign  "BNIsStackReservedForArgumentRegisters" (T.ptr bn_callingconvention @-> returning (T.bool))
  let bnget_integer_return_value_register = F.foreign  "BNGetIntegerReturnValueRegister" (T.ptr bn_callingconvention   @-> returning (T.uint32_t ))
  let bnget_high_integer_return_value_register = F.foreign  "BNGetHighIntegerReturnValueRegister" (T.ptr bn_callingconvention   @-> returning (T.uint32_t ))
  let bnget_float_return_value_register = F.foreign  "BNGetFloatReturnValueRegister" (T.ptr bn_callingconvention   @-> returning (T.uint32_t))
  let bnget_architecture_default_calling_convention = F.foreign  "BNGetArchitectureDefaultCallingConvention" (T.ptr bn_architecture   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_architecture_cdecl_calling_convention = F.foreign  "BNGetArchitectureCdeclCallingConvention" (T.ptr bn_architecture @-> returning (T.ptr bn_callingconvention  ))
  let bnget_architecture_stdcall_calling_convention = F.foreign  "BNGetArchitectureStdcallCallingConvention" (T.ptr bn_architecture @-> returning (T.ptr bn_callingconvention  ))
  let bnget_architecture_fastcall_calling_convention = F.foreign  "BNGetArchitectureFastcallCallingConvention" (T.ptr bn_architecture  @-> returning (T.ptr bn_callingconvention  ))
  let bnset_architecture_default_calling_convention = F.foreign  "BNSetArchitectureDefaultCallingConvention" (T.ptr bn_architecture   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnset_architecture_cdecl_calling_convention = F.foreign  "BNSetArchitectureCdeclCallingConvention" (T.ptr bn_architecture   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnset_architecture_stdcall_calling_convention = F.foreign  "BNSetArchitectureStdcallCallingConvention" (T.ptr bn_architecture   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnset_architecture_fastcall_calling_convention = F.foreign  "BNSetArchitectureFastcallCallingConvention" (T.ptr bn_architecture   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bncreate_platform = F.foreign  "BNCreatePlatform" (T.ptr bn_architecture   @-> T.string   @-> returning (T.ptr bn_platform  ))
  let bnregister_platform = F.foreign  "BNRegisterPlatform" (T.string   @-> T.ptr bn_platform   @-> returning (T.void ))
  let bnnew_platform_reference = F.foreign  "BNNewPlatformReference" (T.ptr bn_platform   @-> returning (T.ptr bn_platform  ))
  let bnfree_platform = F.foreign  "BNFreePlatform" (T.ptr bn_platform   @-> returning (T.void ))
  let bnget_platform_name = F.foreign  "BNGetPlatformName" (T.ptr bn_platform   @-> returning (T.string  ))
  let bnget_platform_architecture = F.foreign  "BNGetPlatformArchitecture" (T.ptr bn_platform   @-> returning (T.ptr bn_architecture  ))
  let bnget_platform_by_name = F.foreign  "BNGetPlatformByName" (T.string   @-> returning (T.ptr bn_platform  ))
  let bnget_platform_list = F.foreign  "BNGetPlatformList" (T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_platform)))
  let bnget_platform_list_by_architecture = F.foreign  "BNGetPlatformListByArchitecture" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_platform)))
  let bnget_platform_list_by_os = F.foreign  "BNGetPlatformListByOS" (T.string   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_platform)))
  let bnget_platform_list_by_osand_architecture = F.foreign  "BNGetPlatformListByOSAndArchitecture" (T.string   @-> T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_platform)))
  let bnfree_platform_list = F.foreign  "BNFreePlatformList" (T.ptr (T.ptr bn_platform) @-> T.size_t  @-> returning (T.void ))
  let bnget_platform_oslist = F.foreign  "BNGetPlatformOSList" (T.ptr T.size_t   @-> returning (T.ptr T.string   ))
  let bnfree_platform_oslist = F.foreign  "BNFreePlatformOSList" (T.ptr T.string    @-> T.size_t  @-> returning (T.void ))
  let bnget_platform_default_calling_convention = F.foreign  "BNGetPlatformDefaultCallingConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_platform_cdecl_calling_convention = F.foreign  "BNGetPlatformCdeclCallingConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_platform_stdcall_calling_convention = F.foreign  "BNGetPlatformStdcallCallingConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_platform_fastcall_calling_convention = F.foreign  "BNGetPlatformFastcallCallingConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_platform_calling_conventions = F.foreign  "BNGetPlatformCallingConventions" (T.ptr bn_platform   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_callingconvention)))
  let bnget_platform_system_call_convention = F.foreign  "BNGetPlatformSystemCallConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnregister_platform_calling_convention = F.foreign  "BNRegisterPlatformCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnregister_platform_default_calling_convention = F.foreign  "BNRegisterPlatformDefaultCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnregister_platform_cdecl_calling_convention = F.foreign  "BNRegisterPlatformCdeclCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnregister_platform_stdcall_calling_convention = F.foreign  "BNRegisterPlatformStdcallCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnregister_platform_fastcall_calling_convention = F.foreign  "BNRegisterPlatformFastcallCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnset_platform_system_call_convention = F.foreign  "BNSetPlatformSystemCallConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnget_architecture_standalone_platform = F.foreign  "BNGetArchitectureStandalonePlatform" (T.ptr bn_architecture   @-> returning (T.ptr bn_platform  ))
  let bnget_related_platform = F.foreign  "BNGetRelatedPlatform" (T.ptr bn_platform   @-> T.ptr bn_architecture   @-> returning (T.ptr bn_platform  ))
  let bnadd_related_platform = F.foreign  "BNAddRelatedPlatform" (T.ptr bn_platform   @-> T.ptr bn_architecture   @-> T.ptr bn_platform   @-> returning (T.void ))
  let bnget_associated_platform_by_address = F.foreign  "BNGetAssociatedPlatformByAddress" (T.ptr bn_platform   @-> T.ptr T.uint64_t   @-> returning (T.ptr bn_platform))

  let bnget_platform_types = F.foreign  "BNGetPlatformTypes"
      (T.ptr ( bn_platform )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bnqualified_name_and_type ) ))

  let bnget_platform_variables = F.foreign  "BNGetPlatformVariables"
      (T.ptr ( bn_platform )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bnqualified_name_and_type ) ))

  let bnget_platform_functions = F.foreign  "BNGetPlatformFunctions"
      (T.ptr ( bn_platform )  @->  T.ptr (T.size_t)  @-> returning (T.ptr ( bnqualified_name_and_type ) ))

  let bnget_platform_system_calls = F.foreign  "BNGetPlatformSystemCalls"
      (T.ptr ( bn_platform )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bnsystem_call_info ) ))

  let bnfree_system_call_list = F.foreign  "BNFreeSystemCallList"
      ( T.ptr ( bnsystem_call_info )  @->  T.size_t  @-> returning (T.void ))

  let bnget_platform_type_by_name = F.foreign  "BNGetPlatformTypeByName"
      (T.ptr ( bn_platform )  @->  T.ptr ( bnqualified_name )  @-> returning (T.ptr ( bn_type ) ))

  let bnget_platform_variable_by_name = F.foreign  "BNGetPlatformVariableByName"
      (T.ptr ( bn_platform )  @->  T.ptr ( bnqualified_name )  @-> returning (T.ptr ( bn_type ) ))

  let bnget_platform_function_by_name = F.foreign  "BNGetPlatformFunctionByName"
      (T.ptr ( bn_platform )  @->  T.ptr ( bnqualified_name )  @-> returning (T.ptr ( bn_type ) ))

  let bnget_platform_system_call_name = F.foreign  "BNGetPlatformSystemCallName"
      ( T.ptr ( bn_platform )  @-> T.uint32_t  @-> returning (T.string ))

  let bnget_platform_system_call_type = F.foreign  "BNGetPlatformSystemCallType"
      (T.ptr ( bn_platform )  @-> T.uint32_t  @-> returning (T.ptr ( bn_type ) ))





  
  let bndemangle_ms = F.foreign  "BNDemangleMS"
      (T.ptr bn_architecture @-> T.string @-> T.ptr (T.ptr bn_type) @-> T.ptr (T.ptr (T.string)) @-> T.ptr T.size_t @-> returning (T.bool ))
  let bnregister_scripting_provider = F.foreign  "BNRegisterScriptingProvider" (T.string   @-> T.ptr E.bnscripting_provider_callbacks   @-> returning (T.ptr E.bn_scripting_provider  ))
  let bnget_scripting_provider_list = F.foreign  "BNGetScriptingProviderList" (T.ptr T.size_t   @-> returning (T.ptr (T.ptr E.bn_scripting_provider)))
  let bnfree_scripting_provider_list = F.foreign  "BNFreeScriptingProviderList" (T.ptr (T.ptr E.bn_scripting_provider)    @-> returning (T.void ))
  let bnget_scripting_provider_by_name = F.foreign  "BNGetScriptingProviderByName" (T.string   @-> returning (T.ptr E.bn_scripting_provider  ))
  let bnget_scripting_provider_name = F.foreign  "BNGetScriptingProviderName" (T.ptr E.bn_scripting_provider   @-> returning (T.string  ))
  let bncreate_scripting_provider_instance = F.foreign  "BNCreateScriptingProviderInstance" (T.ptr E.bn_scripting_provider   @-> returning (T.ptr E.bnscripting_instance  ))
  let bninit_scripting_instance = F.foreign  "BNInitScriptingInstance" (T.ptr E.bn_scripting_provider   @-> T.ptr E.bnscripting_instance_callbacks   @-> returning (T.ptr E.bnscripting_instance  ))
  let bnnew_scripting_instance_reference = F.foreign  "BNNewScriptingInstanceReference" (T.ptr E.bnscripting_instance   @-> returning (T.ptr E.bnscripting_instance  ))
  let bnfree_scripting_instance = F.foreign  "BNFreeScriptingInstance" (T.ptr E.bnscripting_instance   @-> returning (T.void ))
  let bnnotify_output_for_scripting_instance = F.foreign  "BNNotifyOutputForScriptingInstance" (T.ptr E.bnscripting_instance   @-> T.string   @-> returning (T.void ))
  let bnnotify_error_for_scripting_instance = F.foreign  "BNNotifyErrorForScriptingInstance" (T.ptr E.bnscripting_instance   @-> T.string   @-> returning (T.void ))
  let bnnotify_input_ready_state_for_scripting_instance = F.foreign  "BNNotifyInputReadyStateForScriptingInstance" (T.ptr E.bnscripting_instance   @-> E.bnscriptingproviderinputreadystate  @-> returning (T.void ))
  let bnregister_scripting_instance_output_listener = F.foreign  "BNRegisterScriptingInstanceOutputListener" (T.ptr E.bnscripting_instance   @-> T.ptr E.bnscripting_output_listener   @-> returning (T.void ))
  let bnunregister_scripting_instance_output_listener = F.foreign  "BNUnregisterScriptingInstanceOutputListener" (T.ptr E.bnscripting_instance   @-> T.ptr E.bnscripting_output_listener   @-> returning (T.void ))
  let bnget_scripting_instance_input_ready_state = F.foreign  "BNGetScriptingInstanceInputReadyState" (T.ptr E.bnscripting_instance   @-> returning ( E.bnscriptingproviderinputreadystate ))
  let bnset_scripting_instance_current_binary_view = F.foreign  "BNSetScriptingInstanceCurrentBinaryView" (T.ptr E.bnscripting_instance   @-> T.ptr bn_binary_view   @-> returning (T.void ))
  let bnset_scripting_instance_current_function = F.foreign  "BNSetScriptingInstanceCurrentFunction" (T.ptr E.bnscripting_instance   @-> T.ptr bn_function   @-> returning (T.void ))
  let bnset_scripting_instance_current_basic_block = F.foreign  "BNSetScriptingInstanceCurrentBasicBlock" (T.ptr E.bnscripting_instance   @-> T.ptr bn_basicblock   @-> returning (T.void ))
  let bnset_scripting_instance_current_address = F.foreign  "BNSetScriptingInstanceCurrentAddress" (T.ptr E.bnscripting_instance   @->T.uint64_t  @-> returning (T.void ))
  let bnset_scripting_instance_current_selection = F.foreign  "BNSetScriptingInstanceCurrentSelection" (T.ptr E.bnscripting_instance   @->T.uint64_t  @->T.uint64_t  @-> returning (T.void ))
  let bnregister_main_thread = F.foreign  "BNRegisterMainThread" (T.ptr E.bnmain_thread_callbacks   @-> returning (T.void ))
  let bnnew_main_thread_action_reference = F.foreign  "BNNewMainThreadActionReference" (T.ptr E.bnmain_thread_action   @-> returning (T.ptr E.bnmain_thread_action  ))
  let bnfree_main_thread_action = F.foreign  "BNFreeMainThreadAction" (T.ptr E.bnmain_thread_action   @-> returning (T.void ))
  let bnexecute_main_thread_action = F.foreign  "BNExecuteMainThreadAction" (T.ptr E.bnmain_thread_action   @-> returning (T.void ))
  let bnis_main_thread_action_done = F.foreign  "BNIsMainThreadActionDone" (T.ptr bnmain_thread_action @-> returning (T.bool ))
  let bnwait_for_main_thread_action = F.foreign  "BNWaitForMainThreadAction" (T.ptr E.bnmain_thread_action   @-> returning (T.void ))
  let bnexecute_on_main_thread = F.foreign  "BNExecuteOnMainThread" (T.ptr T.void   @-> T.static_funptr T.(T.ptr T.void @-> returning T.void) @-> returning (T.ptr E.bnmain_thread_action  ))
  let bnexecute_on_main_thread_and_wait = F.foreign  "BNExecuteOnMainThreadAndWait" (T.ptr T.void   @-> T.static_funptr T.(T.ptr T.void @-> returning T.void) @-> returning (T.void))
  let bnworker_enqueue = F.foreign  "BNWorkerEnqueue" (T.ptr T.void   @-> T.static_funptr T.(T.ptr T.void @-> returning T.void)  @-> returning (T.void ))
  let bnworker_priority_enqueue = F.foreign  "BNWorkerPriorityEnqueue" (T.ptr T.void   @->T.static_funptr T.(T.ptr T.void @-> returning T.void)@-> returning (T.void ))
  let bnworker_interactive_enqueue = F.foreign  "BNWorkerInteractiveEnqueue" (T.ptr T.void   @->  T.static_funptr T.(T.ptr T.void @-> returning T.void)@-> returning (T.void ))
  let bnget_worker_thread_count = F.foreign  "BNGetWorkerThreadCount" (T.void @-> returning (T.size_t ))
  let bnset_worker_thread_count = F.foreign  "BNSetWorkerThreadCount" (T.size_t  @-> returning (T.void ))
  let bnbegin_background_task = F.foreign  "BNBeginBackgroundTask" (T.string   @-> bool  @-> returning (T.ptr E.bnbackground_task  ))
  let bnfinish_background_task = F.foreign  "BNFinishBackgroundTask" (T.ptr E.bnbackground_task   @-> returning (T.void ))
  let bnset_background_task_progress_text = F.foreign  "BNSetBackgroundTaskProgressText" (T.ptr E.bnbackground_task   @-> T.string   @-> returning (T.void ))
  let bnis_background_task_cancelled = F.foreign  "BNIsBackgroundTaskCancelled" (T.ptr bnbackground_task @-> returning (T.bool))
  let bnget_running_background_tasks = F.foreign  "BNGetRunningBackgroundTasks" (T.ptr T.size_t   @-> returning (T.ptr (T.ptr E.bnbackground_task )  ))
  let bnnew_background_task_reference = F.foreign  "BNNewBackgroundTaskReference" (T.ptr E.bnbackground_task   @-> returning (T.ptr E.bnbackground_task  ))
  let bnfree_background_task = F.foreign  "BNFreeBackgroundTask" (T.ptr E.bnbackground_task   @-> returning (T.void ))
  let bnfree_background_task_list = F.foreign  "BNFreeBackgroundTaskList" (T.ptr (T.ptr E.bnbackground_task) @-> T.size_t  @-> returning (T.void ))
  let bnget_background_task_progress_text = F.foreign  "BNGetBackgroundTaskProgressText" (T.ptr E.bnbackground_task   @-> returning (T.string  ))
  let bncan_cancel_background_task = F.foreign  "BNCanCancelBackgroundTask" (T.ptr bnbackground_task @-> returning (T.bool ))
  let bncancel_background_task = F.foreign  "BNCancelBackgroundTask" (T.ptr E.bnbackground_task   @-> returning (T.void ))
  let bnis_background_task_finished = F.foreign  "BNIsBackgroundTaskFinished" (T.ptr bnbackground_task @-> returning (T.bool ))
  (* let bnregister_interaction_handler = F.foreign  "BNRegisterInteractionHandler" (T.ptr E.bninteraction_handler_callbacks   @-> returning (T.void )) *)
  (* (\* let bnmarkdown_to_html = F.foreign  "BNMarkdownToHTML" (T.string   @-> returning (T.string  )) *\) *)
  (* (\* let bnshow_plain_text_report = F.foreign  "BNShowPlainTextReport" (T.ptr bn_binary_view   @-> T.string   @-> T.string   @-> returning (T.void )) *\) *)
  (* (\* let bnshow_markdown_report = F.foreign  "BNShowMarkdownReport" (T.ptr bn_binary_view   @-> T.string   @-> T.string   @-> T.string   @-> returning (T.void )) *\) *)
  (* (\* let bnshow_htmlreport = F.foreign  "BNShowHTMLReport" (T.ptr bn_binary_view   @-> T.string   @-> T.string   @-> T.string   @-> returning (T.void )) *\) *)
  (* (\* let bnget_text_line_input = F.foreign  "BNGetTextLineInput" (returning (T.size_t )) *\) *)
  (* (\* let bnget_integer_input = F.foreign  "BNGetIntegerInput" (returning (T.size_t )) *\) *)
  (* (\* let bnget_address_input = F.foreign  "BNGetAddressInput" (returning (T.size_t )) *\) *)
  (* (\* let bnget_choice_input = F.foreign  "BNGetChoiceInput" (returning (T.size_t )) *\) *)
  (* (\* let bnget_open_file_name_input = F.foreign  "BNGetOpenFileNameInput" (returning (T.size_t )) *\) *)
  (* (\* let bnget_save_file_name_input = F.foreign  "BNGetSaveFileNameInput" (returning (T.size_t )) *\) *)
  (* (\* let bnget_directory_name_input = F.foreign  "BNGetDirectoryNameInput" (returning (T.size_t )) *\) *)
  (* (\* let bnget_form_input = F.foreign  "BNGetFormInput" (returning (T.size_t )) *\) *)
  (* (\* let bnfree_form_input_results = F.foreign  "BNFreeFormInputResults" (T.ptr E.bnform_input_field   @-> T.size_t  @-> returning (T.void )) *\) *)
  (* (\* let bnshow_message_box = F.foreign  "BNShowMessageBox" (T.string   @-> T.string   @-> enum E.bnmessage_box_button_set  @-> enum E.bnmessage_box_icon  @-> returning (enum E.bnmessage_box_button_result )) *\) *)
  (* (\* let bndemangle_gnu3 = F.foreign  "BNDemangleGNU3" (returning (T.size_t )) *\) *)
  (* (\* let bnfree_demangled_name = F.foreign  "BNFreeDemangledName" (T.ptr T.ptr T.string     @-> T.size_t  @-> returning (T.void )) *\) *)

  let bnplugin_get_api = F.foreign  "BNPluginGetApi" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_author = F.foreign  "BNPluginGetAuthor" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_description = F.foreign  "BNPluginGetDescription" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_license = F.foreign  "BNPluginGetLicense" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_license_text = F.foreign  "BNPluginGetLicenseText" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_longdescription = F.foreign  "BNPluginGetLongdescription" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_minimim_versions = F.foreign  "BNPluginGetMinimimVersions" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_name = F.foreign  "BNPluginGetName" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_url = F.foreign  "BNPluginGetUrl" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_get_version = F.foreign  "BNPluginGetVersion" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnfree_plugin_types = F.foreign  "BNFreePluginTypes" ( T.ptr ( bnplugintype )  @-> returning (T.void ))
  let bnnew_plugin_reference = F.foreign  "BNNewPluginReference" ( T.ptr ( bnrepo_plugin )  @-> returning (T.ptr ( bnrepo_plugin ) ))
  let bnfree_plugin = F.foreign  "BNFreePlugin" ( T.ptr ( bnrepo_plugin )  @-> returning (T.void ))
  let bnplugin_get_path = F.foreign  "BNPluginGetPath" ( T.ptr ( bnrepo_plugin )  @-> returning (T.string ))
  let bnplugin_is_installed = F.foreign  "BNPluginIsInstalled" ( T.ptr ( bnrepo_plugin )  @-> returning (T.bool ))
  let bnplugin_set_enabled = F.foreign  "BNPluginSetEnabled" ( T.ptr ( bnrepo_plugin )  @->  T.bool  @-> returning (T.void ))
  let bnplugin_is_enabled = F.foreign  "BNPluginIsEnabled" ( T.ptr ( bnrepo_plugin )  @-> returning (T.bool ))
  let bnplugin_get_plugin_update_status = F.foreign  "BNPluginGetPluginUpdateStatus" ( T.ptr ( bnrepo_plugin )  @-> returning ( bnpluginupdatestatus ))
  let bnplugin_get_plugin_types = F.foreign  "BNPluginGetPluginTypes" ( T.ptr ( bnrepo_plugin )  @->  T.ptr (T.size_t )  @-> returning (T.ptr ( bnplugintype ) ))
  let bnplugin_enable = F.foreign  "BNPluginEnable" ( T.ptr ( bnrepo_plugin )  @-> returning (T.bool ))
  let bnplugin_disable = F.foreign  "BNPluginDisable" ( T.ptr ( bnrepo_plugin )  @-> returning (T.bool ))
  let bnplugin_install = F.foreign  "BNPluginInstall" ( T.ptr ( bnrepo_plugin )  @-> returning (T.bool ))
  let bnplugin_uninstall = F.foreign  "BNPluginUninstall" ( T.ptr ( bnrepo_plugin )  @-> returning (T.bool ))
 let bnnew_repository_reference = F.foreign  "BNNewRepositoryReference" (T.ptr ( bnrepository )  @-> returning (T.ptr ( bnrepository ) ))
let bnfree_repository = F.foreign  "BNFreeRepository" ( T.ptr ( bnrepository )  @-> returning (T.void ))
let bnrepository_get_url = F.foreign  "BNRepositoryGetUrl" ( T.ptr ( bnrepository )  @-> returning (T.string ))
let bnrepository_get_repo_path = F.foreign  "BNRepositoryGetRepoPath" ( T.ptr ( bnrepository )  @-> returning (T.string ))
let bnrepository_get_local_reference = F.foreign  "BNRepositoryGetLocalReference" ( T.ptr ( bnrepository )  @-> returning (T.string ))
let bnrepository_get_remote_reference = F.foreign  "BNRepositoryGetRemoteReference" ( T.ptr ( bnrepository )  @-> returning (T.string ))
let bnrepository_get_plugins = F.foreign  "BNRepositoryGetPlugins" ( T.ptr ( bnrepository )  @->  T.ptr (T.size_t )  @-> returning (T.ptr (T.ptr ( bnrepo_plugin ) ) ))
let bnfree_repository_plugin_list = F.foreign  "BNFreeRepositoryPluginList" ( T.ptr (T.ptr ( bnrepo_plugin ) )  @-> returning (T.void ))
let bnrepository_is_initialized = F.foreign  "BNRepositoryIsInitialized" ( T.ptr ( bnrepository )  @-> returning (T.bool ))
let bnrepository_free_plugin_directory_list = F.foreign  "BNRepositoryFreePluginDirectoryList" ( T.ptr (T.string )  @->  T.size_t  @-> returning (T.void ))
let bnrepository_get_plugin_by_path = F.foreign  "BNRepositoryGetPluginByPath" ( T.ptr ( bnrepository )  @->  T.string  @-> returning (T.ptr ( bnrepo_plugin ) ))
let bnrepository_get_plugins_path = F.foreign  "BNRepositoryGetPluginsPath" ( T.ptr ( bnrepository )  @-> returning (T.string ))
let bncreate_repository_manager = F.foreign  "BNCreateRepositoryManager" ( T.string  @-> returning (T.ptr ( bnrepository_manager ) ))
let bnnew_repository_manager_reference = F.foreign  "BNNewRepositoryManagerReference" (T.ptr ( bnrepository_manager )  @-> returning (T.ptr ( bnrepository_manager ) ))
let bnfree_repository_manager = F.foreign  "BNFreeRepositoryManager" ( T.ptr ( bnrepository_manager )  @-> returning (T.void ))
let bnrepository_manager_check_for_updates = F.foreign  "BNRepositoryManagerCheckForUpdates" ( T.ptr ( bnrepository_manager )  @-> returning (T.bool ))
let bnrepository_manager_get_repositories = F.foreign  "BNRepositoryManagerGetRepositories" ( T.ptr ( bnrepository_manager )  @->  T.ptr (T.size_t )  @-> returning (T.ptr (T.ptr ( bnrepository ) ) ))
let bnfree_repository_manager_repositories_list = F.foreign  "BNFreeRepositoryManagerRepositoriesList" ( T.ptr (T.ptr ( bnrepository ) )  @-> returning (T.void ))
let bnrepository_manager_add_repository = F.foreign  "BNRepositoryManagerAddRepository" ( T.ptr ( bnrepository_manager )  @->  T.string  @->  T.string  @->  T.string  @->  T.string  @-> returning (T.bool ))
let bnrepository_manager_enable_plugin = F.foreign  "BNRepositoryManagerEnablePlugin" ( T.ptr ( bnrepository_manager )  @->  T.string  @->  T.string  @-> returning (T.bool ))
let bnrepository_manager_disable_plugin = F.foreign  "BNRepositoryManagerDisablePlugin" ( T.ptr ( bnrepository_manager )  @->  T.string  @->  T.string  @-> returning (T.bool ))
let bnrepository_manager_install_plugin = F.foreign  "BNRepositoryManagerInstallPlugin" ( T.ptr ( bnrepository_manager )  @->  T.string  @->  T.string  @-> returning (T.bool ))
let bnrepository_manager_uninstall_plugin = F.foreign  "BNRepositoryManagerUninstallPlugin" ( T.ptr ( bnrepository_manager )  @->  T.string  @->  T.string  @-> returning (T.bool ))
let bnrepository_manager_update_plugin = F.foreign  "BNRepositoryManagerUpdatePlugin" ( T.ptr ( bnrepository_manager )  @->  T.string  @->  T.string  @-> returning (T.bool ))
let bnrepository_get_repository_by_path = F.foreign  "BNRepositoryGetRepositoryByPath" ( T.ptr ( bnrepository_manager )  @->  T.string  @-> returning (T.ptr ( bnrepository ) ))
let bnget_repository_manager = F.foreign  "BNGetRepositoryManager" ( T.void @-> returning (T.ptr ( bnrepository_manager ) ))
let bnrepository_manager_get_default_repository = F.foreign  "BNRepositoryManagerGetDefaultRepository" ( T.ptr ( bnrepository_manager )  @-> returning (T.ptr ( bnrepository ) ))
let bnregister_for_plugin_loading = F.foreign  "BNRegisterForPluginLoading" ( T.string  @-> T.static_funptr T.(T.string @-> T.string @-> T.ptr T.void @-> T.ptr T.void @-> returning T.bool ) @->  T.ptr (T.void )  @-> returning (T.void ))
let bnload_plugin_for_api = F.foreign  "BNLoadPluginForApi" ( T.string  @->  T.string  @->  T.string  @-> returning (T.bool ))
let bnllvm_services_init = F.foreign  "BNLlvmServicesInit" (T.void @-> returning (T.void ))
let bnllvm_services_assemble = F.foreign  "BNLlvmServicesAssemble" ( T.string  @->  T.size_t  @->  T.string  @->  T.size_t  @->  T.size_t  @->  T.ptr (T.string )  @->  T.ptr (T.int )  @->  T.ptr (T.string )  @->  T.ptr (T.int )  @-> returning (T.size_t ))
let bnllvm_services_assemble_free = F.foreign  "BNLlvmServicesAssembleFree" ( T.string  @->  T.string  @-> returning (T.void ))
let bndelete_file = F.foreign  "BNDeleteFile" ( T.string  @-> returning (T.size_t ))
let bndelete_directory = F.foreign  "BNDeleteDirectory" ( T.string  @->  T.size_t  @-> returning (T.size_t ))
let bncreate_directory = F.foreign  "BNCreateDirectory" ( T.string  @-> returning (T.size_t ))
     







end
