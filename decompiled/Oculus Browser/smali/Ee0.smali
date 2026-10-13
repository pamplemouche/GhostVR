.class public final synthetic LEe0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:I

.field public final B:Lorg/chromium/base/Callback;

.field public final C:J

.field public final w:LHe0;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method public constructor <init>(LHe0;Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEe0;->w:LHe0;

    iput-object p2, p0, LEe0;->x:Ljava/lang/String;

    iput-object p3, p0, LEe0;->y:Ljava/lang/String;

    iput p4, p0, LEe0;->z:I

    iput p5, p0, LEe0;->A:I

    iput-object p6, p0, LEe0;->B:Lorg/chromium/base/Callback;

    iput-wide p7, p0, LEe0;->C:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v1, p0, LEe0;->w:LHe0;

    iget-object v2, p0, LEe0;->x:Ljava/lang/String;

    iget-object v3, p0, LEe0;->y:Ljava/lang/String;

    iget v4, p0, LEe0;->z:I

    iget v5, p0, LEe0;->A:I

    iget-object v6, p0, LEe0;->B:Lorg/chromium/base/Callback;

    iget-wide v8, p0, LEe0;->C:J

    .line 1
    iget-object v0, v1, LHe0;->a:LKe0;

    .line 2
    iget-wide v10, v0, LKe0;->a:J

    .line 3
    invoke-static {v10, v11, v0, v2}, LJ/N;->Mtj63gRg(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    .line 5
    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v10

    .line 6
    :goto_0
    sget-object v10, LZ01;->c:LFW;

    new-instance v11, LGe0;

    move-object v0, v11

    invoke-direct/range {v0 .. v9}, LGe0;-><init>(LHe0;Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;Landroid/graphics/Bitmap;J)V

    const-wide/16 v0, 0x0

    .line 7
    invoke-static {v10, v11, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
