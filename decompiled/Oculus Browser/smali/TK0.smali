.class public LTK0;
.super LGM0;
.source "PG"


# instance fields
.field public final synthetic x:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTK0;->x:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    invoke-direct {p0}, LGM0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LTK0;->x:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->D0:Z

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->E()V

    return-void
.end method
