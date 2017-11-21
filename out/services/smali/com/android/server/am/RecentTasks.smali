.class Lcom/android/server/am/RecentTasks;
.super Ljava/util/ArrayList;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RECENT_BITMAPS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final tmpAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final tmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 590
    new-instance v0, Lcom/android/server/am/RecentTasks$1;

    invoke-direct {v0}, Lcom/android/server/am/RecentTasks$1;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    .line 62
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 63
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 66
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 67
    return-void
.end method

.method private final moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v4

    .line 226
    .local v4, "recentsCount":I
    move-object v6, p1

    .line 227
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    move v7, p2

    .line 228
    .local v7, "topIndex":I
    :goto_0
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_0

    if-lez v7, :cond_0

    .line 229
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 230
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 235
    :cond_0
    iget v10, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v10, v11, :cond_5

    move v5, v8

    .line 236
    .local v5, "sane":Z
    :goto_1
    move v1, v7

    .line 237
    .local v1, "endIndex":I
    move-object v3, v6

    .line 238
    .local v3, "prev":Lcom/android/server/am/TaskRecord;
    :cond_1
    if-ge v1, v4, :cond_3

    .line 239
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 242
    .local v0, "cur":Lcom/android/server/am/TaskRecord;
    if-ne v0, v6, :cond_6

    .line 244
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_2

    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v10, v12, :cond_8

    .line 245
    :cond_2
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": first task has next affiliate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v5, 0x0

    .line 301
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 302
    if-ge v1, p2, :cond_4

    .line 303
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": did not extend to task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v5, 0x0

    .line 308
    :cond_4
    if-eqz v5, :cond_c

    .line 311
    move v2, v7

    .local v2, "i":I
    :goto_3
    if-gt v2, v1, :cond_d

    .line 314
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 315
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    sub-int v9, v2, v7

    invoke-virtual {p0, v9, v0}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v5    # "sane":Z
    :cond_5
    move v5, v9

    .line 235
    goto :goto_1

    .line 252
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "endIndex":I
    .restart local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "sane":Z
    :cond_6
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v10, v3, :cond_7

    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v11, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v10, v11, :cond_8

    .line 254
    :cond_7
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": middle task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has bad next affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v5, 0x0

    .line 260
    goto/16 :goto_2

    .line 263
    :cond_8
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v10, v12, :cond_9

    .line 265
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_3

    .line 266
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": last task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has previous affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 275
    :cond_9
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_a

    .line 276
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has previous affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but should be id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v5, 0x0

    .line 281
    goto/16 :goto_2

    .line 284
    :cond_a
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v10, v11, :cond_b

    .line 285
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has affiliated id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but should be "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v5, 0x0

    .line 290
    goto/16 :goto_2

    .line 292
    :cond_b
    move-object v3, v0

    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    if-lt v1, v4, :cond_1

    .line 295
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain ran off index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": last task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v5, 0x0

    .line 298
    goto/16 :goto_2

    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_c
    move v8, v9

    .line 323
    :cond_d
    return v8
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 12
    .param p1, "start"    # I

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 600
    .local v6, "startTask":Lcom/android/server/am/TaskRecord;
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 603
    .local v0, "affiliateId":I
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, v0, :cond_0

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_0

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_0

    .line 608
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 609
    add-int/lit8 v9, p1, 0x1

    .line 667
    :goto_0
    return v9

    .line 613
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 614
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_1
    if-lt v2, p1, :cond_2

    .line 615
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 616
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v9, v0, :cond_1

    .line 617
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 618
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 624
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v10, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 629
    .local v1, "first":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 630
    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_3

    .line 631
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 1 first.next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 633
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 636
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 637
    .local v8, "tmpSize":I
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v9, v8, -0x1

    if-ge v2, v9, :cond_6

    .line 638
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 639
    .local v4, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 640
    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v5, :cond_4

    .line 641
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 2 next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setting prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 644
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 646
    :cond_4
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v4, :cond_5

    .line 647
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 3 prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setting next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v5, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 650
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 652
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 637
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 655
    .end local v4    # "next":Lcom/android/server/am/TaskRecord;
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 656
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_7

    .line 657
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 4 last.prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 659
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 663
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/am/RecentTasks;->addAll(ILjava/util/Collection;)Z

    .line 664
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 667
    add-int v9, p1, v8

    goto/16 :goto_0
.end method


# virtual methods
.method final addLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 327
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, v11, :cond_0

    iget v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v8, v12, :cond_0

    iget v8, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v8, v12, :cond_2

    :cond_0
    move v0, v10

    .line 331
    .local v0, "isAffiliated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 333
    .local v5, "recentsCount":I
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_3

    .line 478
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isAffiliated":Z
    .end local v5    # "recentsCount":I
    :cond_2
    move v0, v9

    .line 327
    goto :goto_0

    .line 339
    .restart local v0    # "isAffiliated":Z
    .restart local v5    # "recentsCount":I
    :cond_3
    if-nez v0, :cond_4

    if-lez v5, :cond_4

    invoke-virtual {p0, v9}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, p1, :cond_1

    .line 345
    :cond_4
    if-eqz v0, :cond_5

    if-lez v5, :cond_5

    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_5

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v9}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v11, v8, :cond_1

    .line 352
    :cond_5
    const/4 v2, 0x0

    .line 366
    .local v2, "needAffiliationFix":Z
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_7

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 368
    .local v6, "taskIndex":I
    if-ltz v6, :cond_8

    .line 369
    if-nez v0, :cond_6

    .line 371
    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 372
    invoke-virtual {p0, v9, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 373
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, p1, v9}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_1

    .line 379
    :cond_6
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 386
    const/4 v2, 0x1

    .line 395
    .end local v6    # "taskIndex":I
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v10}, Lcom/android/server/am/RecentTasks;->trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I

    .line 397
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 398
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    .line 399
    .local v1, "maxRecents":I
    :goto_3
    if-lt v5, v1, :cond_9

    .line 405
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 406
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 407
    add-int/lit8 v5, v5, -0x1

    .line 408
    goto :goto_3

    .line 389
    .end local v1    # "maxRecents":I
    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskIndex":I
    :cond_8
    const-string v8, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task with inRecent not in recents: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v2, 0x1

    goto :goto_2

    .line 409
    .end local v6    # "taskIndex":I
    .restart local v1    # "maxRecents":I
    :cond_9
    iput-boolean v10, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 410
    if-eqz v0, :cond_a

    if-eqz v2, :cond_c

    .line 413
    :cond_a
    invoke-virtual {p0, v9, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 461
    :cond_b
    :goto_4
    if-eqz v2, :cond_1

    .line 463
    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    goto/16 :goto_1

    .line 415
    :cond_c
    if-eqz v0, :cond_b

    .line 418
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 419
    .local v3, "other":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_d

    .line 420
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 422
    :cond_d
    if-eqz v3, :cond_10

    .line 423
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 424
    .local v4, "otherIndex":I
    if-ltz v4, :cond_f

    .line 427
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v3, v8, :cond_e

    .line 430
    add-int/lit8 v6, v4, 0x1

    .line 438
    .restart local v6    # "taskIndex":I
    :goto_5
    invoke-virtual {p0, v6, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 441
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 448
    const/4 v2, 0x1

    .line 449
    goto :goto_4

    .line 434
    .end local v6    # "taskIndex":I
    :cond_e
    move v6, v4

    .restart local v6    # "taskIndex":I
    goto :goto_5

    .line 452
    .end local v6    # "taskIndex":I
    :cond_f
    const/4 v2, 0x1

    goto :goto_4

    .line 457
    .end local v4    # "otherIndex":I
    :cond_10
    const/4 v2, 0x1

    goto :goto_4
.end method

.method cleanupLocked(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 113
    .local v5, "recentsCount":I
    if-nez v5, :cond_1

    .line 222
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 120
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v10, -0x1

    if-ne p1, v10, :cond_3

    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v9

    .line 122
    .local v9, "users":[I
    :goto_0
    const/4 v8, 0x0

    .local v8, "userIdx":I
    :goto_1
    array-length v10, v9

    if-ge v8, v10, :cond_10

    .line 123
    aget v7, v9, v8

    .line 124
    .local v7, "user":I
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .line 125
    move v3, v5

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_f

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 127
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v10, v6, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v7, :cond_4

    .line 125
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 120
    .end local v3    # "i":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "user":I
    .end local v8    # "userIdx":I
    .end local v9    # "users":[I
    :cond_3
    const/4 v10, 0x1

    new-array v9, v10, [I

    const/4 v10, 0x0

    aput p1, v9, v10

    goto :goto_0

    .line 131
    .restart local v3    # "i":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "user":I
    .restart local v8    # "userIdx":I
    .restart local v9    # "users":[I
    :cond_4
    iget-boolean v10, v6, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v10, :cond_5

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_5

    .line 138
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 139
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 140
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing auto-remove without activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 144
    :cond_5
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_2

    .line 145
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 146
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_7

    .line 148
    :try_start_0
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/16 v11, 0x2200

    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    if-nez v0, :cond_6

    .line 156
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 158
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_7
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    if-ne v0, v10, :cond_c

    .line 164
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 165
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_9

    .line 167
    :try_start_1
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2200

    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 174
    if-nez v1, :cond_8

    .line 175
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_9
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eq v1, v10, :cond_a

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_b

    .line 186
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 187
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 188
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing no longer valid recent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 151
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 170
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 172
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 194
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    .line 197
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_c
    iget-boolean v10, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v10, :cond_d

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_d

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_e

    .line 204
    :cond_d
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    .line 208
    :cond_e
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    .line 122
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 216
    .end local v3    # "i":I
    .end local v7    # "user":I
    :cond_10
    const/4 v3, 0x0

    .line 217
    .restart local v3    # "i":I
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 218
    :goto_4
    if-ge v3, v5, :cond_0

    .line 219
    invoke-direct {p0, v3}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_4
.end method

.method removeTasksForUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 82
    if-gtz p1, :cond_0

    .line 83
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t remove recent task on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 89
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 98
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 87
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 103
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v1

    .line 71
    .local v1, "recentsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 73
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    .line 77
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v2

    .line 71
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I
    .locals 17
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "doTrim"    # Z

    .prologue
    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v8

    .line 486
    .local v8, "recentsCount":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 487
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v2, 0x1

    .line 488
    .local v2, "document":Z
    :goto_0
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    add-int/lit8 v5, v15, -0x1

    .line 491
    .local v5, "maxRecents":I
    const/4 v6, 0x0

    .line 492
    .local v6, "numOfRecent":I
    const/4 v7, 0x0

    .line 498
    .local v7, "numOfTask":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_f

    .line 499
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;

    .line 500
    .local v12, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    if-eq v0, v12, :cond_b

    .line 501
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/TaskRecord;->userId:I

    iget v0, v12, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 498
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 487
    .end local v2    # "document":Z
    .end local v3    # "i":I
    .end local v5    # "maxRecents":I
    .end local v6    # "numOfRecent":I
    .end local v7    # "numOfTask":I
    .end local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 515
    .restart local v2    # "document":Z
    .restart local v3    # "i":I
    .restart local v5    # "maxRecents":I
    .restart local v6    # "numOfRecent":I
    .restart local v7    # "numOfTask":I
    .restart local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v15, 0x3

    if-le v3, v15, :cond_3

    .line 516
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->freeLastThumbnail()V

    .line 518
    :cond_3
    iget-object v13, v12, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 519
    .local v13, "trIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v15, :cond_5

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v10, 0x1

    .line 521
    .local v10, "sameAffinity":Z
    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v4, v13}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v11, 0x1

    .line 522
    .local v11, "sameIntent":Z
    :goto_4
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v14, 0x1

    .line 523
    .local v14, "trIsDocument":Z
    :goto_5
    if-eqz v2, :cond_8

    if-eqz v14, :cond_8

    const/4 v1, 0x1

    .line 524
    .local v1, "bothDocuments":Z
    :goto_6
    if-nez v10, :cond_4

    if-nez v11, :cond_4

    if-eqz v1, :cond_0

    .line 528
    :cond_4
    if-eqz v1, :cond_a

    .line 530
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_9

    iget-object v15, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_9

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v9, 0x1

    .line 533
    .local v9, "sameActivity":Z
    :goto_7
    if-eqz v9, :cond_0

    .line 536
    if-lez v5, :cond_b

    .line 537
    add-int/lit8 v5, v5, -0x1

    .line 538
    goto :goto_2

    .line 519
    .end local v1    # "bothDocuments":Z
    .end local v9    # "sameActivity":Z
    .end local v10    # "sameAffinity":Z
    .end local v11    # "sameIntent":Z
    .end local v14    # "trIsDocument":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 521
    .restart local v10    # "sameAffinity":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 522
    .restart local v11    # "sameIntent":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 523
    .restart local v14    # "trIsDocument":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    .line 530
    .restart local v1    # "bothDocuments":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_7

    .line 542
    :cond_a
    if-nez v2, :cond_0

    if-nez v14, :cond_0

    .line 548
    .end local v1    # "bothDocuments":Z
    .end local v10    # "sameAffinity":Z
    .end local v11    # "sameIntent":Z
    .end local v13    # "trIntent":Landroid/content/Intent;
    .end local v14    # "trIsDocument":Z
    :cond_b
    if-nez p2, :cond_c

    .line 586
    .end local v3    # "i":I
    .end local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_8
    return v3

    .line 563
    .restart local v3    # "i":I
    .restart local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_c
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 564
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 565
    move-object/from16 v0, p1

    if-eq v0, v12, :cond_d

    .line 566
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 568
    :cond_d
    add-int/lit8 v3, v3, -0x1

    .line 569
    add-int/lit8 v8, v8, -0x1

    .line 570
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v15, :cond_e

    .line 573
    move-object/from16 p1, v12

    .line 575
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto/16 :goto_2

    .line 586
    .end local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v3, -0x1

    goto :goto_8
.end method