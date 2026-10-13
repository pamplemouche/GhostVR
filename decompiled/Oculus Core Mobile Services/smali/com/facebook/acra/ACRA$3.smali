.class final Lcom/facebook/acra/ACRA$3;
.super Ljava/lang/Object;
.source "ACRA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/ACRA;->loadAcraNativeLibrary(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/facebook/acra/ACRA$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 352
    :try_start_0
    invoke-static {}, Lcom/facebook/acra/ACRA;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :try_start_1
    const-string v0, "acra"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 354
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/acra/ACRA;->access$102(Z)Z

    .line 355
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    iget-object v0, p0, Lcom/facebook/acra/ACRA$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/acra/ACRA;->access$200(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 360
    :goto_0
    return-void

    .line 355
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to load libacra"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
