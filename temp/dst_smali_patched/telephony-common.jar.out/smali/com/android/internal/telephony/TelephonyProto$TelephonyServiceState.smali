.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyServiceState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$RoamingType;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;


# instance fields
.field private bitField0_:I

.field public dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

.field private dataRat_:I

.field private dataRoamingType_:I

.field public voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

.field private voiceRat_:I

.field private voiceRoamingType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->cachedSize:I

    return-object p0
.end method

.method public clearDataRat()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    return-object p0
.end method

.method public clearDataRoamingType()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    return-object p0
.end method

.method public clearVoiceRat()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    return-object p0
.end method

.method public clearVoiceRoamingType()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public getDataRat()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    return v0
.end method

.method public getDataRoamingType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    return v0
.end method

.method public getVoiceRat()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    return v0
.end method

.method public getVoiceRoamingType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    return v0
.end method

.method public hasDataRat()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDataRoamingType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVoiceRat()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVoiceRoamingType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
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
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    goto :goto_0

    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    goto :goto_0

    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_2

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    goto/16 :goto_0

    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_3

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_3
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setDataRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    return-object p0
.end method

.method public setDataRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    return-object p0
.end method

.method public setVoiceRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    return-object p0
.end method

.method public setVoiceRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

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
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
