.class public Lxe0;
.super LfQ0;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, LfQ0;-><init>()V

    .line 2
    iput-object p1, p0, Lxe0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lxe0;->b:Ljava/lang/String;

    if-eqz p7, :cond_0

    .line 4
    sget-object p1, LzT;->a:Landroid/content/Context;

    const p2, 0x7f130140

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lxe0;->c:Ljava/lang/String;

    .line 7
    array-length p1, p6

    invoke-static {p6, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 8
    iput-boolean p7, p0, Lxe0;->d:Z

    return-void
.end method
