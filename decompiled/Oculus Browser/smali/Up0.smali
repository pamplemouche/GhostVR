.class public final synthetic LUp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final w:LKp0;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(LKp0;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUp0;->w:LKp0;

    iput-object p2, p0, LUp0;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object p1, p0, LUp0;->w:LKp0;

    iget-object v0, p0, LUp0;->x:Lorg/chromium/base/Callback;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v1}, LKp0;->d(Z)V

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
