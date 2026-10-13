.class public LAK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, LAK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LAK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->b0:LHK0;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    iget-boolean v0, v1, LHK0;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, v1, LHK0;->f:Z

    const/4 v0, 0x0

    .line 6
    throw v0
.end method
