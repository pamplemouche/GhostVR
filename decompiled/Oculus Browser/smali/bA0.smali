.class public final synthetic LbA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/IntStringCallback;


# instance fields
.field public final a:LjA0;


# direct methods
.method public constructor <init>(LjA0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbA0;->a:LjA0;

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, LbA0;->a:LjA0;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, LjA0;->c:Ljava/lang/Integer;

    .line 2
    iget p1, v0, LjA0;->a:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 5
    :try_start_0
    invoke-static {p1}, Lorg/chromium/base/ContentUriUtils;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, LjA0;->b:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, LjA0;->c()V

    goto :goto_0

    :catch_0
    move-exception p1

    const p2, 0x7f13054a

    .line 7
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f130623

    const/4 v2, 0x2

    invoke-virtual {v0, p2, p1, v1, v2}, LjA0;->a(ILjava/lang/String;II)V

    :goto_0
    return-void
.end method
