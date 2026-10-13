.class public LmQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:LnQ0;


# direct methods
.method public constructor <init>(LnQ0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LmQ0;->x:LnQ0;

    iput p2, p0, LmQ0;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LmQ0;->x:LnQ0;

    iget-object v0, v0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->P:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    .line 3
    iget v1, p0, LmQ0;->w:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method
