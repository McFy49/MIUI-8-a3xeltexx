.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;


# instance fields
.field public eventType:I

.field public latencyMs:I

.field public networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
