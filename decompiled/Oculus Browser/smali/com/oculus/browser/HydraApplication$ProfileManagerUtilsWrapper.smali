.class public Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/HydraApplication;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/HydraApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;->this$0:Lcom/oculus/browser/HydraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flushPersistentDataForAllProfiles()V
    .locals 2

    const-string v0, "ProfileManagerUtils.commitPendingWritesForAllProfiles"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, LJ/N;->MPpDwRXN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method
