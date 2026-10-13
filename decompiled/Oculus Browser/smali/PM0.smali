.class public LPM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic w:LRM0;


# direct methods
.method public constructor <init>(LRM0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPM0;->w:LRM0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LPM0;->w:LRM0;

    invoke-virtual {p1}, LRM0;->b()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
