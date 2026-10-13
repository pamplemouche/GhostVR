.class public final synthetic LFe0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LHe0;

.field public final b:Lorg/chromium/base/Callback;

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method public constructor <init>(LHe0;Lorg/chromium/base/Callback;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFe0;->a:LHe0;

    iput-object p2, p0, LFe0;->b:Lorg/chromium/base/Callback;

    iput-object p3, p0, LFe0;->c:Ljava/lang/String;

    iput-wide p4, p0, LFe0;->d:J

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, LFe0;->a:LHe0;

    iget-object v1, p0, LFe0;->b:Lorg/chromium/base/Callback;

    iget-object v5, p0, LFe0;->c:Ljava/lang/String;

    iget-wide v6, p0, LFe0;->d:J

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v1, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 2
    iget-object v4, v0, LHe0;->a:LKe0;

    .line 3
    iget-wide v2, v4, LKe0;->a:J

    .line 4
    invoke-static/range {v2 .. v7}, LJ/N;->MCVt6f5k(JLjava/lang/Object;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
