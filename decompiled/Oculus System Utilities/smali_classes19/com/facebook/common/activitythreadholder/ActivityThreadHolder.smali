.class public final Lcom/facebook/common/activitythreadholder/ActivityThreadHolder;
.super Ljava/lang/Object;
.source "ActivityThreadHolder.java"


# static fields
.field private static sActivityThread:Landroid/app/ActivityThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/common/activitythreadholder/ActivityThreadHolder;->sActivityThread:Landroid/app/ActivityThread;

    .line 17
    .local v0, "at":Landroid/app/ActivityThread;
    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .end local v0    # "at":Landroid/app/ActivityThread;
    sput-object v0, Lcom/facebook/common/activitythreadholder/ActivityThreadHolder;->sActivityThread:Landroid/app/ActivityThread;

    .line 20
    .restart local v0    # "at":Landroid/app/ActivityThread;
    :cond_0
    return-object v0
.end method

.method public static setActivityThread(Landroid/app/ActivityThread;)V
    .locals 0
    .param p0, "at"    # Landroid/app/ActivityThread;

    .prologue
    .line 24
    sput-object p0, Lcom/facebook/common/activitythreadholder/ActivityThreadHolder;->sActivityThread:Landroid/app/ActivityThread;

    .line 25
    return-void
.end method
