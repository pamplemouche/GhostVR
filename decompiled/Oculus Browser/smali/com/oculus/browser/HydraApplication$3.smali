.class public Lcom/oculus/browser/HydraApplication$3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWS0;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/HydraApplication;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/HydraApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication$3;->this$0:Lcom/oculus/browser/HydraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childCrashed(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/HydraApplication$3;->this$0:Lcom/oculus/browser/HydraApplication;

    invoke-static {p1}, Lcom/oculus/browser/HydraApplication;->access$100(Lcom/oculus/browser/HydraApplication;)Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->uploadCrashReports()V

    return-void
.end method
