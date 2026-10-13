.class public final synthetic LGe0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:I

.field public final B:Lorg/chromium/base/Callback;

.field public final C:Landroid/graphics/Bitmap;

.field public final D:J

.field public final w:LHe0;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method public constructor <init>(LHe0;Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;Landroid/graphics/Bitmap;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGe0;->w:LHe0;

    iput-object p2, p0, LGe0;->x:Ljava/lang/String;

    iput-object p3, p0, LGe0;->y:Ljava/lang/String;

    iput p4, p0, LGe0;->z:I

    iput p5, p0, LGe0;->A:I

    iput-object p6, p0, LGe0;->B:Lorg/chromium/base/Callback;

    iput-object p7, p0, LGe0;->C:Landroid/graphics/Bitmap;

    iput-wide p8, p0, LGe0;->D:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v1, p0, LGe0;->w:LHe0;

    iget-object v6, p0, LGe0;->x:Ljava/lang/String;

    iget-object v10, p0, LGe0;->y:Ljava/lang/String;

    iget v7, p0, LGe0;->z:I

    iget v8, p0, LGe0;->A:I

    iget-object v2, p0, LGe0;->B:Lorg/chromium/base/Callback;

    iget-object v0, p0, LGe0;->C:Landroid/graphics/Bitmap;

    iget-wide v11, p0, LGe0;->D:J

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v2, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 2
    invoke-static {}, LKe0;->a()LKe0;

    move-result-object v2

    .line 3
    iget-wide v3, v2, LKe0;->a:J

    .line 4
    invoke-static {v3, v4, v2, v10, v0}, LJ/N;->M1k4kLxJ(JLjava/lang/Object;Ljava/lang/String;I)V

    .line 5
    iget-object v9, v1, LHe0;->a:LKe0;

    .line 6
    iget-wide v7, v9, LKe0;->a:J

    .line 7
    invoke-static/range {v7 .. v12}, LJ/N;->M6WiBncI(JLjava/lang/Object;Ljava/lang/String;J)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v9, v1, LHe0;->a:LKe0;

    const/4 v13, 0x1

    .line 9
    new-instance v14, LFe0;

    move-object v0, v14

    move-object v3, v10

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, LFe0;-><init>(LHe0;Lorg/chromium/base/Callback;Ljava/lang/String;J)V

    .line 10
    iget-wide v2, v9, LKe0;->a:J

    new-instance v0, LJe0;

    invoke-direct {v0, v14, v7, v8}, LJe0;-><init>(Lorg/chromium/base/Callback;II)V

    move-object v4, v9

    move v5, v13

    move-object v7, v10

    move-object v8, v0

    .line 11
    invoke-static/range {v2 .. v8}, LJ/N;->MVa6KqKn(JLjava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 12
    throw v0
.end method
