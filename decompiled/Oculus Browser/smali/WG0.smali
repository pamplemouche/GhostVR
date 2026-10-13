.class public final synthetic LWG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LWG0;->a:Z

    iput-object p2, p0, LWG0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, LWG0;->a:Z

    iget-object v1, p0, LWG0;->b:Ljava/lang/Runnable;

    check-cast p1, Landroid/view/View;

    const/4 p1, 0x2

    .line 1
    invoke-static {v0, p1}, LaH0;->a(ZI)V

    .line 2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
