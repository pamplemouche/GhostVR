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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportViolation(ILjava/lang/String;)V
    .locals 0

    .line 160
    invoke-static {p0, p1}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->reportViolation(ILjava/lang/String;)V

    return-void
.end method

.method public static reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    invoke-static {p0, p1, p2}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static declared-synchronized setAppPolicy(Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;)V
    .locals 1

    const-class v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode;

    monitor-enter v0

    .line 168
    :try_start_0
    sput-object p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    .line 169
    sget-object p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    invoke-static {p0}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->setAppPolicy(Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
