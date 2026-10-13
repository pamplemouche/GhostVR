.class public final Lcom/facebook/crudolib/appstrictmode/AppStrictMode;
.super Ljava/lang/Object;
.source "AppStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;,
        Lcom/facebook/crudolib/appstrictmode/AppStrictMode$Penalty;,
        Lcom/facebook/crudolib/appstrictmode/AppStrictMode$Violation;
    }
.end annotation


# static fields
.field static final DETECT_RESOURCE_NOT_RELEASED:I = 0x1

.field public static final INEFFICIENT_USAGE:I = 0x2

.field static final PENALTY_DIALOG:I = 0x20000

.field static final PENALTY_LOG:I = 0x10000

.field private static sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportViolation(ILjava/lang/String;)V
    .locals 0
    .param p0, "violationType"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->reportViolation(ILjava/lang/String;)V

    .line 161
    return-void
.end method

.method public static reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "violationType"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-static {p0, p1, p2}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public static declared-synchronized setAppPolicy(Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;)V
    .locals 2
    .param p0, "policy"    # Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    .prologue
    .line 168
    const-class v1, Lcom/facebook/crudolib/appstrictmode/AppStrictMode;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    .line 169
    sget-object v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    invoke-static {v0}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->setAppPolicy(Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit v1

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
