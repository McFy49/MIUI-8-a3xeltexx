.class public Lcom/absolute/android/persistservice/ah;
.super Lcom/absolute/android/persistence/IABTPersistedFile$Stub;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/io/File;

.field private c:Lcom/absolute/android/persistservice/v;

.field private d:Z

.field private e:Ljava/io/FileInputStream;

.field private f:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/absolute/android/persistservice/v;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ah;->d:Z

    iput-object v1, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    iput-object p3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    iput-object p1, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/absolute/android/persistservice/ah;->d:Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException in close() for Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public delete()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ah;->close()V

    invoke-super {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->finalize()V

    return-void
.end method

.method public read([B)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException for read() from Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    :cond_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException for skip() on Persisted File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v4, v3, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException for skip() on Persisted File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v4, v3, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public write([B)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    iget-boolean v3, p0, Lcom/absolute/android/persistservice/ah;->d:Z

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    array-length v0, p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public writeWithCount([BII)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    iget-boolean v3, p0, Lcom/absolute/android/persistservice/ah;->d:Z

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return p3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, v0

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, v0

    goto :goto_0
.end method
