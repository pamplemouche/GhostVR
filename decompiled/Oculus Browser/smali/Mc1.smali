.class public final synthetic LMc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final a:Lorg/chromium/ui/base/SelectFileDialog;

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Z[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMc1;->a:Lorg/chromium/ui/base/SelectFileDialog;

    iput-boolean p2, p0, LMc1;->b:Z

    iput-object p3, p0, LMc1;->c:[Ljava/lang/String;

    iput-object p4, p0, LMc1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 10

    iget-object v0, p0, LMc1;->a:Lorg/chromium/ui/base/SelectFileDialog;

    iget-boolean v1, p0, LMc1;->b:Z

    iget-object v2, p0, LMc1;->c:[Ljava/lang/String;

    iget-object v3, p0, LMc1;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_5

    .line 2
    aget v6, p2, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 3
    iget-boolean v6, v0, Lorg/chromium/ui/base/SelectFileDialog;->y:Z

    if-eqz v6, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_3

    .line 5
    array-length v6, p1

    array-length v7, v2

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v6, v7, :cond_2

    .line 6
    aget-object v6, p1, v5

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-array v0, v8, [Ljava/lang/Object;

    aget-object p1, p1, v5

    aput-object p1, v0, v4

    aget-object p1, v2, v5

    aput-object p1, v0, v9

    const-string p1, "Permissions arrays don\'t match: %s != %s"

    .line 8
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-array v0, v8, [Ljava/lang/Object;

    array-length p1, p1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    array-length p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v9

    const-string p1, "Permissions arrays misaligned: %d != %d"

    .line 11
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 12
    aget-object v6, p1, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v0}, Lorg/chromium/ui/base/SelectFileDialog;->c()V

    :goto_2
    return-void

    :cond_6
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
