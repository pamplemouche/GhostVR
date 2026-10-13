.class public final synthetic LMe0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LNe0;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(LNe0;Ljava/lang/String;IILorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMe0;->a:LNe0;

    iput-object p2, p0, LMe0;->b:Ljava/lang/String;

    iput p3, p0, LMe0;->c:I

    iput p4, p0, LMe0;->d:I

    iput-object p5, p0, LMe0;->e:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LMe0;->a:LNe0;

    iget-object v1, p0, LMe0;->b:Ljava/lang/String;

    iget v2, p0, LMe0;->c:I

    iget v3, p0, LMe0;->d:I

    iget-object v4, p0, LMe0;->e:Lorg/chromium/base/Callback;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1
    iget-object v5, v0, LNe0;->b:LyO0;

    if-nez v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1, v2, v3}, LNe0;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v0, v0, LNe0;->b:LyO0;

    invoke-virtual {v0, v1, p1}, LyO0;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4
    :cond_1
    :goto_0
    invoke-interface {v4, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
