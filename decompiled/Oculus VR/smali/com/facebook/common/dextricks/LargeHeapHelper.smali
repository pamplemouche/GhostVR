.class public final Lcom/facebook/common/dextricks/LargeHeapHelper;
.super Ljava/lang/Object;
.source "LargeHeapHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LargeHeapHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeEnableLargeHeap(Landroid/app/Application;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SharedPreferencesUse",
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    move v2, v1

    .line 30
    :goto_0
    if-nez v2, :cond_2

    .line 33
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "large_heap_override_store"

    .line 34
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 37
    const-string v4, "large_heap_override_enabled"

    .line 38
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    const-string v4, "large_heap_override_max_memory_class"

    .line 42
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
    const-string v0, "activity"

    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 46
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 47
    if-gt v0, v3, :cond_2

    move v0, v1

    .line 53
    :goto_1
    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/facebook/common/dextricks/MemoryEnlargementHack;->growMyHeap(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v0

    .line 28
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "LargeHeapHelper"

    const-string v2, "Unable to set large heap mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method
