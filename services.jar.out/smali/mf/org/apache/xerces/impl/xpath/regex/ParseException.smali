.class public Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# static fields
.field static final serialVersionUID:J = -0x61510cef9f0c92eaL


# instance fields
.field final location:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "location"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->location:I

    .line 44
    return-void
.end method


# virtual methods
.method public getLocation()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->location:I

    return v0
.end method
