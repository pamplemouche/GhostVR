.class public Lcom/facebook/secure/intent/LaunchEnforcement;
.super Ljava/lang/Object;
.source "LaunchEnforcement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENFORCE_MODE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;


# instance fields
.field private mEnforceMode:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;->OPEN_EXCEPTION_ONLY:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    sput-object v0, Lcom/facebook/secure/intent/LaunchEnforcement;->DEFAULT_ENFORCE_MODE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/facebook/secure/intent/LaunchEnforcement;->DEFAULT_ENFORCE_MODE:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    iput-object v0, p0, Lcom/facebook/secure/intent/LaunchEnforcement;->mEnforceMode:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized getEnforceMode()Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/intent/LaunchEnforcement;->mEnforceMode:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnforceMode(Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;)V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/secure/intent/LaunchEnforcement;->mEnforceMode:Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
