.class public final Lfy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final f:[Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Lfy;

.field public final d:Z

.field public final e:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1
    invoke-static {v1}, Lfy;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Lfy;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Lfy;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lfy;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Lfy;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfy;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILfy;Ljava/lang/ref/WeakReference;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lfy;->a:I

    .line 3
    iput-object p2, p0, Lfy;->c:Lfy;

    .line 4
    iput-object p3, p0, Lfy;->b:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lfy;->e:Ljava/util/List;

    .line 6
    iput-boolean p5, p0, Lfy;->d:Z

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const-string v2, "  "

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ldy;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lfy;->c(Ldy;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[cycle detected]"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget v0, p0, Lfy;->a:I

    .line 4
    new-instance v1, Ley;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 5
    iget-object v0, p0, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lfy;->b(Ldy;)Lfy;

    move-result-object v0

    .line 8
    :try_start_0
    invoke-interface {p1, v0}, Ldy;->a(Lfy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Dumper"

    const-string v2, "Dump Failed"

    .line 9
    invoke-static {v1, p1, v2, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Appendable;)V
    .locals 8

    .line 10
    iget-object v0, p0, Lfy;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ley;

    .line 11
    iget-boolean v5, p0, Lfy;->d:Z

    .line 12
    iget-object v6, v3, Ley;->b:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    if-nez v6, :cond_1

    if-eqz v5, :cond_0

    .line 13
    iget-boolean v5, v3, Ley;->e:Z

    if-eqz v5, :cond_0

    const-string v5, "[REDACTED]"

    goto :goto_1

    :cond_0
    iget-object v5, v3, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v7

    .line 14
    :goto_1
    iget-object v6, v3, Ley;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Ley;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 16
    :cond_2
    iget-object v6, v3, Ley;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Ley;->a:Ljava/lang/String;

    const-string v7, ":"

    invoke-static {v5, v6, v7}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 18
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v7, v5

    :cond_4
    :goto_2
    if-nez v2, :cond_8

    .line 19
    iget-boolean v2, v3, Ley;->d:Z

    if-eqz v2, :cond_5

    const-string v2, " | "

    .line 20
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 21
    :cond_5
    iget v2, v3, Ley;->c:I

    if-gez v2, :cond_6

    .line 22
    sget-object v2, Lfy;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    goto :goto_3

    .line 23
    :cond_6
    sget-object v3, Lfy;->f:[Ljava/lang/String;

    array-length v5, v3

    if-ge v2, v5, :cond_7

    .line 24
    aget-object v2, v3, v2

    goto :goto_3

    .line 25
    :cond_7
    invoke-static {v2}, Lfy;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    :goto_3
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 27
    :cond_8
    :goto_4
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 28
    :cond_9
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final b(Ldy;)Lfy;
    .locals 7

    .line 1
    new-instance v6, Lfy;

    iget v0, p0, Lfy;->a:I

    add-int/lit8 v1, v0, 0x1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lfy;->e:Ljava/util/List;

    iget-boolean v5, p0, Lfy;->d:Z

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lfy;-><init>(ILfy;Ljava/lang/ref/WeakReference;Ljava/util/List;Z)V

    return-object v6
.end method

.method public final c(Ldy;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lfy;->c:Lfy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lfy;->c(Ldy;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
