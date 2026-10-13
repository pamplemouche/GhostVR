.class public LGX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LDX0;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;)V
    .locals 0

    .line 1
    iput-object p2, p0, LGX0;->w:LDX0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LGX0;->w:LDX0;

    .line 2
    invoke-virtual {v0}, LDX0;->a()V

    .line 3
    invoke-virtual {v0}, LDX0;->b()V

    .line 4
    iget-object v1, v0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5
    iput-object v2, v0, LDX0;->a:LCX0;

    return-void
.end method
