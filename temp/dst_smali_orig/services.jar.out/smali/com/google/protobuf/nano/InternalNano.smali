.class public final Lcom/google/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field public static final LAZY_INIT_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)[B
    .locals 3
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static cloneUnknownFieldData(Lcom/google/protobuf/nano/ExtendableMessageNano;Lcom/google/protobuf/nano/ExtendableMessageNano;)V
    .locals 1
    .param p0, "original"    # Lcom/google/protobuf/nano/ExtendableMessageNano;
    .param p1, "cloned"    # Lcom/google/protobuf/nano/ExtendableMessageNano;

    .prologue
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object v0

    iput-object v0, p1, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    :cond_0
    return-void
.end method

.method public static copyFromUtf8(Ljava/lang/String;)[B
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static equals([D[D)Z
    .locals 3
    .param p0, "field1"    # [D
    .param p1, "field2"    # [D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0
.end method

.method public static equals([F[F)Z
    .locals 3
    .param p0, "field1"    # [F
    .param p1, "field2"    # [F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0
.end method

.method public static equals([I[I)Z
    .locals 3
    .param p0, "field1"    # [I
    .param p1, "field2"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public static equals([J[J)Z
    .locals 3
    .param p0, "field1"    # [J
    .param p1, "field2"    # [J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 9
    .param p0, "field1"    # [Ljava/lang/Object;
    .param p1, "field2"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .local v2, "index1":I
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .local v4, "length1":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "index2":I
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .local v5, "length2":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v6, p0, v2

    if-nez v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_0
    array-length v4, p0

    .restart local v4    # "length1":I
    goto :goto_0

    .restart local v3    # "index2":I
    :cond_1
    array-length v5, p1

    .restart local v5    # "length2":I
    goto :goto_1

    :cond_2
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v6, p1, v3

    if-nez v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-lt v2, v4, :cond_4

    const/4 v0, 0x1

    .local v0, "atEndOf1":Z
    :goto_3
    if-lt v3, v5, :cond_5

    const/4 v1, 0x1

    .local v1, "atEndOf2":Z
    :goto_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    const/4 v6, 0x1

    return v6

    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "atEndOf1":Z
    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "atEndOf2":Z
    goto :goto_4

    :cond_6
    if-eq v0, v1, :cond_7

    return v8

    :cond_7
    aget-object v6, p0, v2

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static equals([Z[Z)Z
    .locals 3
    .param p0, "field1"    # [Z
    .param p1, "field2"    # [Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0
.end method

.method public static equals([[B[[B)Z
    .locals 9
    .param p0, "field1"    # [[B
    .param p1, "field2"    # [[B

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .local v2, "index1":I
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .local v4, "length1":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "index2":I
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .local v5, "length2":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v6, p0, v2

    if-nez v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_0
    array-length v4, p0

    .restart local v4    # "length1":I
    goto :goto_0

    .restart local v3    # "index2":I
    :cond_1
    array-length v5, p1

    .restart local v5    # "length2":I
    goto :goto_1

    :cond_2
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v6, p1, v3

    if-nez v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-lt v2, v4, :cond_4

    const/4 v0, 0x1

    .local v0, "atEndOf1":Z
    :goto_3
    if-lt v3, v5, :cond_5

    const/4 v1, 0x1

    .local v1, "atEndOf2":Z
    :goto_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    const/4 v6, 0x1

    return v6

    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "atEndOf1":Z
    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "atEndOf2":Z
    goto :goto_4

    :cond_6
    if-eq v0, v1, :cond_7

    return v8

    :cond_7
    aget-object v6, p0, v2

    aget-object v7, p1, v3

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static hashCode([D)I
    .locals 2
    .param p0, "field"    # [D

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 2
    .param p0, "field"    # [F

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 2
    .param p0, "field"    # [I

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 2
    .param p0, "field"    # [J

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "field"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_0

    mul-int/lit8 v4, v2, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_1
    array-length v3, p0

    .restart local v3    # "size":I
    goto :goto_0

    :cond_2
    return v2
.end method

.method public static hashCode([Z)I
    .locals 2
    .param p0, "field"    # [Z

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([[B)I
    .locals 6
    .param p0, "field"    # [[B

    .prologue
    const/4 v2, 0x0

    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    .local v0, "element":[B
    if-eqz v0, :cond_0

    mul-int/lit8 v4, v2, 0x1f

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    add-int v2, v4, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":[B
    .end local v3    # "size":I
    :cond_1
    array-length v3, p0

    .restart local v3    # "size":I
    goto :goto_0

    :cond_2
    return v2
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
