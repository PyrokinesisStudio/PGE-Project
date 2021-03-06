#-------------------------------------------------
#
# Project created by QtCreator 2015-06-27T08:04:05
#
#-------------------------------------------------

QT       += core gui concurrent network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ServerAsio
TEMPLATE = app

CONFIG += c++11

include(../../../_common/dest_dir.pri)
include(../../../_common/build_props.pri)

INCLUDEPATH += $$PWD/../../../_Libs/asio

DEFINES += ASIO_STANDALONE
DEFINES += ASIO_SEPARATE_COMPILATION
DEFINES += BOOST_ASIO_HEADER_ONLY

win32:{
    DEFINES += ASIO_HAS_THREADS
    DEFINES += _WIN32_WINNT=0x0501
    DEFINES += ASIO_WINDOWS
    LIBS += -lWs2_32 -lMswsock
}
unix:{
    DEFINES += ASIO_HAS_PTHREADS
}

SOURCES += main.cpp\
        mainwindow.cpp \
    ConnectionLib/Server/pgenet_server.cpp \
    ConnectionLib/Server/low-level/pgenetll_server.cpp \
    ConnectionLib/Server/low-level/pgenetll_session.cpp \
    ../../../_Libs/asio/asio/impl/src.cpp \
    ConnectionLib/Shared/pgenet_global.cpp \
    ConnectionLib/Shared/pgenet_packetmanager.cpp \
    ConnectionLib/Server/session/pgenet_session.cpp \
    ConnectionLib/Server/session/pgenet_globalsession.cpp \
    ConnectionLib/Shared/packetV2/packets/ClientToServer/packetuserauth.cpp \
    ConnectionLib/Shared/packetV2/packets/Both/packetmessage.cpp \
    ConnectionLib/Server/util/rawpacketdecoder.cpp \
    ConnectionLib/Server/user/pgenet_usermanager.cpp \
    ConnectionLib/Shared/util/threadedlogger.cpp \
    ConnectionLib/Server/user/pgenet_serveruser.cpp \
    ConnectionLib/Shared/user/pgenet_user.cpp

HEADERS  += mainwindow.h \
    ConnectionLib/Server/pgenet_server.h \
    ConnectionLib/Server/low-level/pgenetll_server.h \
    ConnectionLib/Server/low-level/pgenetll_session.h \
    ../../../_Libs/asio/asio/detail/impl/dev_poll_reactor.hpp \
    ../../../_Libs/asio/asio/detail/impl/epoll_reactor.hpp \
    ../../../_Libs/asio/asio/detail/impl/kqueue_reactor.hpp \
    ../../../_Libs/asio/asio/detail/impl/select_reactor.hpp \
    ../../../_Libs/asio/asio/detail/impl/service_registry.hpp \
    ../../../_Libs/asio/asio/detail/impl/strand_service.hpp \
    ../../../_Libs/asio/asio/detail/impl/task_io_service.hpp \
    ../../../_Libs/asio/asio/detail/impl/win_iocp_io_service.hpp \
    ../../../_Libs/asio/asio/detail/impl/winrt_timer_scheduler.hpp \
    ../../../_Libs/asio/asio/detail/addressof.hpp \
    ../../../_Libs/asio/asio/detail/array.hpp \
    ../../../_Libs/asio/asio/detail/array_fwd.hpp \
    ../../../_Libs/asio/asio/detail/assert.hpp \
    ../../../_Libs/asio/asio/detail/atomic_count.hpp \
    ../../../_Libs/asio/asio/detail/base_from_completion_cond.hpp \
    ../../../_Libs/asio/asio/detail/bind_handler.hpp \
    ../../../_Libs/asio/asio/detail/buffer_resize_guard.hpp \
    ../../../_Libs/asio/asio/detail/buffer_sequence_adapter.hpp \
    ../../../_Libs/asio/asio/detail/buffered_stream_storage.hpp \
    ../../../_Libs/asio/asio/detail/call_stack.hpp \
    ../../../_Libs/asio/asio/detail/chrono_time_traits.hpp \
    ../../../_Libs/asio/asio/detail/completion_handler.hpp \
    ../../../_Libs/asio/asio/detail/config.hpp \
    ../../../_Libs/asio/asio/detail/consuming_buffers.hpp \
    ../../../_Libs/asio/asio/detail/cstdint.hpp \
    ../../../_Libs/asio/asio/detail/date_time_fwd.hpp \
    ../../../_Libs/asio/asio/detail/deadline_timer_service.hpp \
    ../../../_Libs/asio/asio/detail/dependent_type.hpp \
    ../../../_Libs/asio/asio/detail/descriptor_ops.hpp \
    ../../../_Libs/asio/asio/detail/descriptor_read_op.hpp \
    ../../../_Libs/asio/asio/detail/descriptor_write_op.hpp \
    ../../../_Libs/asio/asio/detail/dev_poll_reactor.hpp \
    ../../../_Libs/asio/asio/detail/epoll_reactor.hpp \
    ../../../_Libs/asio/asio/detail/event.hpp \
    ../../../_Libs/asio/asio/detail/eventfd_select_interrupter.hpp \
    ../../../_Libs/asio/asio/detail/fd_set_adapter.hpp \
    ../../../_Libs/asio/asio/detail/fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/function.hpp \
    ../../../_Libs/asio/asio/detail/gcc_arm_fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/gcc_hppa_fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/gcc_sync_fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/gcc_x86_fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/handler_alloc_helpers.hpp \
    ../../../_Libs/asio/asio/detail/handler_cont_helpers.hpp \
    ../../../_Libs/asio/asio/detail/handler_invoke_helpers.hpp \
    ../../../_Libs/asio/asio/detail/handler_tracking.hpp \
    ../../../_Libs/asio/asio/detail/handler_type_requirements.hpp \
    ../../../_Libs/asio/asio/detail/hash_map.hpp \
    ../../../_Libs/asio/asio/detail/io_control.hpp \
    ../../../_Libs/asio/asio/detail/keyword_tss_ptr.hpp \
    ../../../_Libs/asio/asio/detail/kqueue_reactor.hpp \
    ../../../_Libs/asio/asio/detail/limits.hpp \
    ../../../_Libs/asio/asio/detail/local_free_on_block_exit.hpp \
    ../../../_Libs/asio/asio/detail/macos_fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/mutex.hpp \
    ../../../_Libs/asio/asio/detail/noncopyable.hpp \
    ../../../_Libs/asio/asio/detail/null_event.hpp \
    ../../../_Libs/asio/asio/detail/null_fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/null_mutex.hpp \
    ../../../_Libs/asio/asio/detail/null_reactor.hpp \
    ../../../_Libs/asio/asio/detail/null_signal_blocker.hpp \
    ../../../_Libs/asio/asio/detail/null_socket_service.hpp \
    ../../../_Libs/asio/asio/detail/null_static_mutex.hpp \
    ../../../_Libs/asio/asio/detail/null_thread.hpp \
    ../../../_Libs/asio/asio/detail/null_tss_ptr.hpp \
    ../../../_Libs/asio/asio/detail/object_pool.hpp \
    ../../../_Libs/asio/asio/detail/old_win_sdk_compat.hpp \
    ../../../_Libs/asio/asio/detail/op_queue.hpp \
    ../../../_Libs/asio/asio/detail/operation.hpp \
    ../../../_Libs/asio/asio/detail/pipe_select_interrupter.hpp \
    ../../../_Libs/asio/asio/detail/pop_options.hpp \
    ../../../_Libs/asio/asio/detail/posix_event.hpp \
    ../../../_Libs/asio/asio/detail/posix_fd_set_adapter.hpp \
    ../../../_Libs/asio/asio/detail/posix_mutex.hpp \
    ../../../_Libs/asio/asio/detail/posix_signal_blocker.hpp \
    ../../../_Libs/asio/asio/detail/posix_static_mutex.hpp \
    ../../../_Libs/asio/asio/detail/posix_thread.hpp \
    ../../../_Libs/asio/asio/detail/posix_tss_ptr.hpp \
    ../../../_Libs/asio/asio/detail/push_options.hpp \
    ../../../_Libs/asio/asio/detail/reactive_descriptor_service.hpp \
    ../../../_Libs/asio/asio/detail/reactive_null_buffers_op.hpp \
    ../../../_Libs/asio/asio/detail/reactive_serial_port_service.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_accept_op.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_connect_op.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_recv_op.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_recvfrom_op.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_recvmsg_op.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_send_op.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_sendto_op.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_service.hpp \
    ../../../_Libs/asio/asio/detail/reactive_socket_service_base.hpp \
    ../../../_Libs/asio/asio/detail/reactor.hpp \
    ../../../_Libs/asio/asio/detail/reactor_fwd.hpp \
    ../../../_Libs/asio/asio/detail/reactor_op.hpp \
    ../../../_Libs/asio/asio/detail/reactor_op_queue.hpp \
    ../../../_Libs/asio/asio/detail/regex_fwd.hpp \
    ../../../_Libs/asio/asio/detail/resolve_endpoint_op.hpp \
    ../../../_Libs/asio/asio/detail/resolve_op.hpp \
    ../../../_Libs/asio/asio/detail/resolver_service.hpp \
    ../../../_Libs/asio/asio/detail/resolver_service_base.hpp \
    ../../../_Libs/asio/asio/detail/scoped_lock.hpp \
    ../../../_Libs/asio/asio/detail/scoped_ptr.hpp \
    ../../../_Libs/asio/asio/detail/select_interrupter.hpp \
    ../../../_Libs/asio/asio/detail/select_reactor.hpp \
    ../../../_Libs/asio/asio/detail/service_registry.hpp \
    ../../../_Libs/asio/asio/detail/shared_ptr.hpp \
    ../../../_Libs/asio/asio/detail/signal_blocker.hpp \
    ../../../_Libs/asio/asio/detail/signal_handler.hpp \
    ../../../_Libs/asio/asio/detail/signal_init.hpp \
    ../../../_Libs/asio/asio/detail/signal_op.hpp \
    ../../../_Libs/asio/asio/detail/signal_set_service.hpp \
    ../../../_Libs/asio/asio/detail/socket_holder.hpp \
    ../../../_Libs/asio/asio/detail/socket_ops.hpp \
    ../../../_Libs/asio/asio/detail/socket_option.hpp \
    ../../../_Libs/asio/asio/detail/socket_select_interrupter.hpp \
    ../../../_Libs/asio/asio/detail/socket_types.hpp \
    ../../../_Libs/asio/asio/detail/solaris_fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/static_mutex.hpp \
    ../../../_Libs/asio/asio/detail/std_event.hpp \
    ../../../_Libs/asio/asio/detail/std_mutex.hpp \
    ../../../_Libs/asio/asio/detail/std_static_mutex.hpp \
    ../../../_Libs/asio/asio/detail/std_thread.hpp \
    ../../../_Libs/asio/asio/detail/strand_service.hpp \
    ../../../_Libs/asio/asio/detail/task_io_service.hpp \
    ../../../_Libs/asio/asio/detail/task_io_service_operation.hpp \
    ../../../_Libs/asio/asio/detail/task_io_service_thread_info.hpp \
    ../../../_Libs/asio/asio/detail/thread.hpp \
    ../../../_Libs/asio/asio/detail/thread_info_base.hpp \
    ../../../_Libs/asio/asio/detail/throw_error.hpp \
    ../../../_Libs/asio/asio/detail/throw_exception.hpp \
    ../../../_Libs/asio/asio/detail/timer_queue.hpp \
    ../../../_Libs/asio/asio/detail/timer_queue_base.hpp \
    ../../../_Libs/asio/asio/detail/timer_queue_ptime.hpp \
    ../../../_Libs/asio/asio/detail/timer_queue_set.hpp \
    ../../../_Libs/asio/asio/detail/timer_scheduler.hpp \
    ../../../_Libs/asio/asio/detail/timer_scheduler_fwd.hpp \
    ../../../_Libs/asio/asio/detail/tss_ptr.hpp \
    ../../../_Libs/asio/asio/detail/type_traits.hpp \
    ../../../_Libs/asio/asio/detail/variadic_templates.hpp \
    ../../../_Libs/asio/asio/detail/wait_handler.hpp \
    ../../../_Libs/asio/asio/detail/wait_op.hpp \
    ../../../_Libs/asio/asio/detail/weak_ptr.hpp \
    ../../../_Libs/asio/asio/detail/win_event.hpp \
    ../../../_Libs/asio/asio/detail/win_fd_set_adapter.hpp \
    ../../../_Libs/asio/asio/detail/win_fenced_block.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_handle_read_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_handle_service.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_handle_write_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_io_service.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_null_buffers_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_operation.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_overlapped_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_overlapped_ptr.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_serial_port_service.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_socket_accept_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_socket_connect_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_socket_recv_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_socket_recvfrom_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_socket_recvmsg_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_socket_send_op.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_socket_service.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_socket_service_base.hpp \
    ../../../_Libs/asio/asio/detail/win_iocp_thread_info.hpp \
    ../../../_Libs/asio/asio/detail/win_mutex.hpp \
    ../../../_Libs/asio/asio/detail/win_object_handle_service.hpp \
    ../../../_Libs/asio/asio/detail/win_static_mutex.hpp \
    ../../../_Libs/asio/asio/detail/win_thread.hpp \
    ../../../_Libs/asio/asio/detail/win_tss_ptr.hpp \
    ../../../_Libs/asio/asio/detail/wince_thread.hpp \
    ../../../_Libs/asio/asio/detail/winrt_async_manager.hpp \
    ../../../_Libs/asio/asio/detail/winrt_async_op.hpp \
    ../../../_Libs/asio/asio/detail/winrt_resolve_op.hpp \
    ../../../_Libs/asio/asio/detail/winrt_resolver_service.hpp \
    ../../../_Libs/asio/asio/detail/winrt_socket_connect_op.hpp \
    ../../../_Libs/asio/asio/detail/winrt_socket_recv_op.hpp \
    ../../../_Libs/asio/asio/detail/winrt_socket_send_op.hpp \
    ../../../_Libs/asio/asio/detail/winrt_ssocket_service.hpp \
    ../../../_Libs/asio/asio/detail/winrt_ssocket_service_base.hpp \
    ../../../_Libs/asio/asio/detail/winrt_timer_scheduler.hpp \
    ../../../_Libs/asio/asio/detail/winrt_utils.hpp \
    ../../../_Libs/asio/asio/detail/winsock_init.hpp \
    ../../../_Libs/asio/asio/detail/wrapped_handler.hpp \
    ../../../_Libs/asio/asio/generic/detail/endpoint.hpp \
    ../../../_Libs/asio/asio/generic/basic_endpoint.hpp \
    ../../../_Libs/asio/asio/generic/datagram_protocol.hpp \
    ../../../_Libs/asio/asio/generic/raw_protocol.hpp \
    ../../../_Libs/asio/asio/generic/seq_packet_protocol.hpp \
    ../../../_Libs/asio/asio/generic/stream_protocol.hpp \
    ../../../_Libs/asio/asio/impl/buffered_read_stream.hpp \
    ../../../_Libs/asio/asio/impl/buffered_write_stream.hpp \
    ../../../_Libs/asio/asio/impl/connect.hpp \
    ../../../_Libs/asio/asio/impl/io_service.hpp \
    ../../../_Libs/asio/asio/impl/read.hpp \
    ../../../_Libs/asio/asio/impl/read_at.hpp \
    ../../../_Libs/asio/asio/impl/read_until.hpp \
    ../../../_Libs/asio/asio/impl/serial_port_base.hpp \
    ../../../_Libs/asio/asio/impl/spawn.hpp \
    ../../../_Libs/asio/asio/impl/src.hpp \
    ../../../_Libs/asio/asio/impl/use_future.hpp \
    ../../../_Libs/asio/asio/impl/write.hpp \
    ../../../_Libs/asio/asio/impl/write_at.hpp \
    ../../../_Libs/asio/asio/ip/detail/endpoint.hpp \
    ../../../_Libs/asio/asio/ip/detail/socket_option.hpp \
    ../../../_Libs/asio/asio/ip/impl/address.hpp \
    ../../../_Libs/asio/asio/ip/impl/address_v4.hpp \
    ../../../_Libs/asio/asio/ip/impl/address_v6.hpp \
    ../../../_Libs/asio/asio/ip/impl/basic_endpoint.hpp \
    ../../../_Libs/asio/asio/ip/address.hpp \
    ../../../_Libs/asio/asio/ip/address_v4.hpp \
    ../../../_Libs/asio/asio/ip/address_v6.hpp \
    ../../../_Libs/asio/asio/ip/basic_endpoint.hpp \
    ../../../_Libs/asio/asio/ip/basic_resolver.hpp \
    ../../../_Libs/asio/asio/ip/basic_resolver_entry.hpp \
    ../../../_Libs/asio/asio/ip/basic_resolver_iterator.hpp \
    ../../../_Libs/asio/asio/ip/basic_resolver_query.hpp \
    ../../../_Libs/asio/asio/ip/host_name.hpp \
    ../../../_Libs/asio/asio/ip/icmp.hpp \
    ../../../_Libs/asio/asio/ip/multicast.hpp \
    ../../../_Libs/asio/asio/ip/resolver_query_base.hpp \
    ../../../_Libs/asio/asio/ip/resolver_service.hpp \
    ../../../_Libs/asio/asio/ip/tcp.hpp \
    ../../../_Libs/asio/asio/ip/udp.hpp \
    ../../../_Libs/asio/asio/ip/unicast.hpp \
    ../../../_Libs/asio/asio/ip/v6_only.hpp \
    ../../../_Libs/asio/asio/local/detail/endpoint.hpp \
    ../../../_Libs/asio/asio/local/basic_endpoint.hpp \
    ../../../_Libs/asio/asio/local/connect_pair.hpp \
    ../../../_Libs/asio/asio/local/datagram_protocol.hpp \
    ../../../_Libs/asio/asio/local/stream_protocol.hpp \
    ../../../_Libs/asio/asio/posix/basic_descriptor.hpp \
    ../../../_Libs/asio/asio/posix/basic_stream_descriptor.hpp \
    ../../../_Libs/asio/asio/posix/descriptor_base.hpp \
    ../../../_Libs/asio/asio/posix/stream_descriptor.hpp \
    ../../../_Libs/asio/asio/posix/stream_descriptor_service.hpp \
    ../../../_Libs/asio/asio/ssl/detail/buffered_handshake_op.hpp \
    ../../../_Libs/asio/asio/ssl/detail/engine.hpp \
    ../../../_Libs/asio/asio/ssl/detail/handshake_op.hpp \
    ../../../_Libs/asio/asio/ssl/detail/io.hpp \
    ../../../_Libs/asio/asio/ssl/detail/openssl_init.hpp \
    ../../../_Libs/asio/asio/ssl/detail/openssl_types.hpp \
    ../../../_Libs/asio/asio/ssl/detail/password_callback.hpp \
    ../../../_Libs/asio/asio/ssl/detail/read_op.hpp \
    ../../../_Libs/asio/asio/ssl/detail/shutdown_op.hpp \
    ../../../_Libs/asio/asio/ssl/detail/stream_core.hpp \
    ../../../_Libs/asio/asio/ssl/detail/verify_callback.hpp \
    ../../../_Libs/asio/asio/ssl/detail/write_op.hpp \
    ../../../_Libs/asio/asio/ssl/impl/context.hpp \
    ../../../_Libs/asio/asio/ssl/impl/src.hpp \
    ../../../_Libs/asio/asio/ssl/old/detail/openssl_context_service.hpp \
    ../../../_Libs/asio/asio/ssl/old/detail/openssl_operation.hpp \
    ../../../_Libs/asio/asio/ssl/old/detail/openssl_stream_service.hpp \
    ../../../_Libs/asio/asio/ssl/old/basic_context.hpp \
    ../../../_Libs/asio/asio/ssl/old/context_service.hpp \
    ../../../_Libs/asio/asio/ssl/old/stream.hpp \
    ../../../_Libs/asio/asio/ssl/old/stream_service.hpp \
    ../../../_Libs/asio/asio/ssl/basic_context.hpp \
    ../../../_Libs/asio/asio/ssl/context.hpp \
    ../../../_Libs/asio/asio/ssl/context_base.hpp \
    ../../../_Libs/asio/asio/ssl/context_service.hpp \
    ../../../_Libs/asio/asio/ssl/error.hpp \
    ../../../_Libs/asio/asio/ssl/rfc2818_verification.hpp \
    ../../../_Libs/asio/asio/ssl/stream.hpp \
    ../../../_Libs/asio/asio/ssl/stream_base.hpp \
    ../../../_Libs/asio/asio/ssl/stream_service.hpp \
    ../../../_Libs/asio/asio/ssl/verify_context.hpp \
    ../../../_Libs/asio/asio/ssl/verify_mode.hpp \
    ../../../_Libs/asio/asio/windows/basic_handle.hpp \
    ../../../_Libs/asio/asio/windows/basic_object_handle.hpp \
    ../../../_Libs/asio/asio/windows/basic_random_access_handle.hpp \
    ../../../_Libs/asio/asio/windows/basic_stream_handle.hpp \
    ../../../_Libs/asio/asio/windows/object_handle.hpp \
    ../../../_Libs/asio/asio/windows/object_handle_service.hpp \
    ../../../_Libs/asio/asio/windows/overlapped_ptr.hpp \
    ../../../_Libs/asio/asio/windows/random_access_handle.hpp \
    ../../../_Libs/asio/asio/windows/random_access_handle_service.hpp \
    ../../../_Libs/asio/asio/windows/stream_handle.hpp \
    ../../../_Libs/asio/asio/windows/stream_handle_service.hpp \
    ../../../_Libs/asio/asio/async_result.hpp \
    ../../../_Libs/asio/asio/basic_datagram_socket.hpp \
    ../../../_Libs/asio/asio/basic_deadline_timer.hpp \
    ../../../_Libs/asio/asio/basic_io_object.hpp \
    ../../../_Libs/asio/asio/basic_raw_socket.hpp \
    ../../../_Libs/asio/asio/basic_seq_packet_socket.hpp \
    ../../../_Libs/asio/asio/basic_serial_port.hpp \
    ../../../_Libs/asio/asio/basic_signal_set.hpp \
    ../../../_Libs/asio/asio/basic_socket.hpp \
    ../../../_Libs/asio/asio/basic_socket_acceptor.hpp \
    ../../../_Libs/asio/asio/basic_socket_iostream.hpp \
    ../../../_Libs/asio/asio/basic_socket_streambuf.hpp \
    ../../../_Libs/asio/asio/basic_stream_socket.hpp \
    ../../../_Libs/asio/asio/basic_streambuf.hpp \
    ../../../_Libs/asio/asio/basic_streambuf_fwd.hpp \
    ../../../_Libs/asio/asio/basic_waitable_timer.hpp \
    ../../../_Libs/asio/asio/buffer.hpp \
    ../../../_Libs/asio/asio/buffered_read_stream.hpp \
    ../../../_Libs/asio/asio/buffered_read_stream_fwd.hpp \
    ../../../_Libs/asio/asio/buffered_stream.hpp \
    ../../../_Libs/asio/asio/buffered_stream_fwd.hpp \
    ../../../_Libs/asio/asio/buffered_write_stream.hpp \
    ../../../_Libs/asio/asio/buffered_write_stream_fwd.hpp \
    ../../../_Libs/asio/asio/buffers_iterator.hpp \
    ../../../_Libs/asio/asio/completion_condition.hpp \
    ../../../_Libs/asio/asio/connect.hpp \
    ../../../_Libs/asio/asio/coroutine.hpp \
    ../../../_Libs/asio/asio/datagram_socket_service.hpp \
    ../../../_Libs/asio/asio/deadline_timer.hpp \
    ../../../_Libs/asio/asio/deadline_timer_service.hpp \
    ../../../_Libs/asio/asio/error.hpp \
    ../../../_Libs/asio/asio/error_code.hpp \
    ../../../_Libs/asio/asio/handler_alloc_hook.hpp \
    ../../../_Libs/asio/asio/handler_continuation_hook.hpp \
    ../../../_Libs/asio/asio/handler_invoke_hook.hpp \
    ../../../_Libs/asio/asio/handler_type.hpp \
    ../../../_Libs/asio/asio/high_resolution_timer.hpp \
    ../../../_Libs/asio/asio/io_service.hpp \
    ../../../_Libs/asio/asio/is_read_buffered.hpp \
    ../../../_Libs/asio/asio/is_write_buffered.hpp \
    ../../../_Libs/asio/asio/placeholders.hpp \
    ../../../_Libs/asio/asio/raw_socket_service.hpp \
    ../../../_Libs/asio/asio/read.hpp \
    ../../../_Libs/asio/asio/read_at.hpp \
    ../../../_Libs/asio/asio/read_until.hpp \
    ../../../_Libs/asio/asio/seq_packet_socket_service.hpp \
    ../../../_Libs/asio/asio/serial_port.hpp \
    ../../../_Libs/asio/asio/serial_port_base.hpp \
    ../../../_Libs/asio/asio/serial_port_service.hpp \
    ../../../_Libs/asio/asio/signal_set.hpp \
    ../../../_Libs/asio/asio/signal_set_service.hpp \
    ../../../_Libs/asio/asio/socket_acceptor_service.hpp \
    ../../../_Libs/asio/asio/socket_base.hpp \
    ../../../_Libs/asio/asio/spawn.hpp \
    ../../../_Libs/asio/asio/ssl.hpp \
    ../../../_Libs/asio/asio/steady_timer.hpp \
    ../../../_Libs/asio/asio/strand.hpp \
    ../../../_Libs/asio/asio/stream_socket_service.hpp \
    ../../../_Libs/asio/asio/streambuf.hpp \
    ../../../_Libs/asio/asio/system_error.hpp \
    ../../../_Libs/asio/asio/system_timer.hpp \
    ../../../_Libs/asio/asio/thread.hpp \
    ../../../_Libs/asio/asio/time_traits.hpp \
    ../../../_Libs/asio/asio/unyield.hpp \
    ../../../_Libs/asio/asio/use_future.hpp \
    ../../../_Libs/asio/asio/version.hpp \
    ../../../_Libs/asio/asio/wait_traits.hpp \
    ../../../_Libs/asio/asio/waitable_timer_service.hpp \
    ../../../_Libs/asio/asio/write.hpp \
    ../../../_Libs/asio/asio/write_at.hpp \
    ../../../_Libs/asio/asio/yield.hpp \
    ../../../_Libs/asio/asio.hpp \
    ConnectionLib/Shared/pgenet_global.h \
    ConnectionLib/Shared/util/ThreadedQueue.h \
    ConnectionLib/Shared/pgenet_packetmanager.h \
    ConnectionLib/Shared/packetV2/packets/packet.h \
    ConnectionLib/Shared/packetV2/pgepacketregister.h \
    ConnectionLib/Server/session/pgenet_session.h \
    ConnectionLib/Server/session/pgenet_globalsession.h \
    ConnectionLib/Shared/packetV2/packets/ClientToServer/packetuserauth.h \
    ConnectionLib/Shared/packetV2/packets/Both/packetmessage.h \
    ConnectionLib/Server/util/rawpacketdecoder.h \
    ConnectionLib/Server/user/pgenet_user.h \
    ConnectionLib/Server/user/pgenet_usermanager.h \
    ConnectionLib/Shared/util/threadedlogger.h \
    ConnectionLib/Server/user/pgenet_serveruser.h \
    ConnectionLib/Shared/user/pgenet_user.h

FORMS    += mainwindow.ui
