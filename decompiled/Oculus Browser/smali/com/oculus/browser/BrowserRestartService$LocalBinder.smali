.class public Lcom/oculus/browser/BrowserRestartService$LocalBinder;
.super Landroid/os/Binder;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/BrowserRestartService;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/BrowserRestartService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/BrowserRestartService$LocalBinder;->this$0:Lcom/oculus/browser/BrowserRestartService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/oculus/browser/BrowserRestartService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/BrowserRestartService$LocalBinder;->this$0:Lcom/oculus/browser/BrowserRestartService;

    return-object v0
.end method
