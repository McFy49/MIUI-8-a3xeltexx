.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilSetupDataCallResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse$RilDataCallFailCause;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;


# instance fields
.field private bitField0_:I

.field public call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private status_:I

.field private suggestedRetryTimeMillis_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->cachedSize:I

    return-object p0
.end method

.method public clearStatus()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    return-object p0
.end method

.method public clearSuggestedRetryTimeMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    return v0
.end method

.method public getSuggestedRetryTimeMillis()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    return v0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSuggestedRetryTimeMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .local v2, "value":I
    sparse-switch v2, :sswitch_data_1

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :sswitch_2
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    goto :goto_0

    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6 -> :sswitch_2
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x8 -> :sswitch_2
        0xe -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1b -> :sswitch_2
        0x1c -> :sswitch_2
        0x1d -> :sswitch_2
        0x1e -> :sswitch_2
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
        0x21 -> :sswitch_2
        0x22 -> :sswitch_2
        0x23 -> :sswitch_2
        0x24 -> :sswitch_2
        0x25 -> :sswitch_2
        0x26 -> :sswitch_2
        0x27 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2a -> :sswitch_2
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x2d -> :sswitch_2
        0x2e -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x51 -> :sswitch_2
        0x5f -> :sswitch_2
        0x60 -> :sswitch_2
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x6f -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_2
        0x75 -> :sswitch_2
        0x76 -> :sswitch_2
        0x77 -> :sswitch_2
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_2
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method public setStatus(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    return-object p0
.end method

.method public setSuggestedRetryTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
