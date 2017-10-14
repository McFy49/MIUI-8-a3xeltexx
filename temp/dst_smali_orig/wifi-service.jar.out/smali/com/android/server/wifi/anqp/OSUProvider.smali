.class public Lcom/android/server/wifi/anqp/OSUProvider;
.super Ljava/lang/Object;
.source "OSUProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;
    }
.end annotation


# instance fields
.field private final mHashCode:I

.field private final mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field

.field private final mOSUMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final mOSUServer:Ljava/lang/String;

.field private final mOsuNai:Ljava/lang/String;

.field private final mServiceDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0xb

    if-ge v10, v11, :cond_0

    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Truncated OSU provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    const v11, 0xffff

    and-int v4, v10, v11

    .local v4, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    const v11, 0xffff

    and-int v8, v10, v11

    .local v8, "namesLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "namesBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    :goto_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    new-instance v11, Lcom/android/server/wifi/anqp/I18Name;

    invoke-direct {v11, v7}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v11, 0x1

    invoke-static {p1, v11, v10}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v6, v10, 0xff

    .local v6, "methodLength":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    :goto_1
    if-lez v6, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v5, v10, 0xff

    .local v5, "methodID":I
    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    invoke-static {}, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->values()[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    move-result-object v10

    array-length v10, v10

    if-ge v5, v10, :cond_2

    invoke-static {}, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->values()[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    move-result-object v10

    aget-object v10, v10, v5

    :goto_2
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .end local v5    # "methodID":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    const v11, 0xffff

    and-int v3, v10, v11

    .local v3, "iconsLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "iconsBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    :goto_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    new-instance v11, Lcom/android/server/wifi/anqp/IconInfo;

    invoke-direct {v11, v2}, Lcom/android/server/wifi/anqp/IconInfo;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v11, v10, v12}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    const v11, 0xffff

    and-int v1, v10, v11

    .local v1, "descriptionsLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "descriptionsBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    new-instance v11, Lcom/android/server/wifi/anqp/I18Name;

    invoke-direct {v11, v0}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->hashCode()I

    move-result v9

    .local v9, "result":I
    mul-int/lit8 v10, v9, 0x1f

    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    add-int v9, v10, v11

    mul-int/lit8 v10, v9, 0x1f

    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->hashCode()I

    move-result v11

    add-int v9, v10, v11

    mul-int/lit8 v10, v9, 0x1f

    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->hashCode()I

    move-result v11

    add-int v9, v10, v11

    mul-int/lit8 v11, v9, 0x1f

    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    :goto_5
    add-int v9, v11, v10

    mul-int/lit8 v10, v9, 0x1f

    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->hashCode()I

    move-result v11

    add-int v9, v10, v11

    iput v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mHashCode:I

    return-void

    :cond_6
    const/4 v10, 0x0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/OSUProvider;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/anqp/OSUProvider;

    .local v0, "that":Lcom/android/server/wifi/anqp/OSUProvider;
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    return v4

    :cond_9
    iget-object v1, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    if-eqz v1, :cond_8

    :cond_a
    return v3
.end method

.method public getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    return-object v0
.end method

.method public getOSUMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    return-object v0
.end method

.method public getOSUServer()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    return-object v0
.end method

.method public getOsuNai()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSUProvider{names="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OSUServer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OSUMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NAI=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceDescriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
