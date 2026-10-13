.class public Lm01;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LW01;


# static fields
.field public static e:Ljava/lang/Class;

.field public static f:Ljava/lang/Class;

.field public static g:Ljava/lang/reflect/Constructor;

.field public static h:Ljava/lang/reflect/Method;

.field public static i:Z


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/Object;

.field public c:Ll01;

.field public d:Lb01;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll01;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm01;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lm01;->c:Ll01;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    :try_start_0
    sget-object v0, Lm01;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lm01;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lm01;->f:Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/String;IILT01;)V
    .locals 7

    .line 25
    iget-object v0, p0, Lm01;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lm01;->d:Lb01;

    invoke-virtual {v0, p1, p2}, Lb01;->a(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 27
    iput-object v1, p0, Lm01;->b:Ljava/lang/Object;

    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 29
    iget-object v3, p0, Lm01;->d:Lb01;

    invoke-virtual {v3, p2, p1, v2}, Lb01;->a(II[I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 30
    iput-object v1, p0, Lm01;->b:Ljava/lang/Object;

    return-void

    :cond_2
    const/4 p1, 0x3

    const/4 p2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_4

    .line 31
    iget-object p4, p4, LT01;->g:Landroid/view/textclassifier/TextClassification;

    if-eqz p4, :cond_4

    .line 32
    iget-object v4, p0, Lm01;->c:Ll01;

    aget v5, v2, v3

    aget v2, v2, p2

    check-cast v4, La01;

    if-eqz v4, :cond_3

    .line 33
    :try_start_0
    sget-object v4, La01;->g:Ljava/lang/reflect/Method;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    aput-object p4, v6, p1

    .line 35
    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v1

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lm01;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 37
    :cond_3
    throw v1

    .line 38
    :cond_4
    iget-object p4, p0, Lm01;->c:Ll01;

    aget v4, v2, v3

    aget v2, v2, p2

    check-cast p4, La01;

    if-eqz p4, :cond_6

    .line 39
    :try_start_1
    sget-object p4, La01;->f:Ljava/lang/reflect/Method;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p4, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object p1, v1

    .line 40
    :goto_1
    invoke-virtual {p0, p1}, Lm01;->a(Ljava/lang/Object;)V

    :goto_2
    packed-switch p3, :pswitch_data_0

    const/4 p2, 0x0

    :pswitch_0
    if-eqz p2, :cond_5

    .line 41
    iput-object v1, p0, Lm01;->b:Ljava/lang/Object;

    :cond_5
    return-void

    .line 42
    :cond_6
    throw v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;ILT01;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lm01;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm01;->d:Lb01;

    invoke-virtual {v0, p1, p2}, Lb01;->a(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iput-object v1, p0, Lm01;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 5
    iget-object v3, p0, Lm01;->d:Lb01;

    invoke-virtual {v3, p2, p1, v2}, Lb01;->a(II[I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iput-object v1, p0, Lm01;->b:Ljava/lang/Object;

    return-void

    :cond_2
    const/4 p1, 0x3

    const/4 p2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    .line 7
    iget-object v4, p3, LT01;->h:Landroid/view/textclassifier/TextSelection;

    if-eqz v4, :cond_4

    .line 8
    iget-object p3, p0, Lm01;->c:Ll01;

    aget v5, v2, v3

    aget v2, v2, p2

    check-cast p3, La01;

    if-eqz p3, :cond_3

    .line 9
    :try_start_0
    sget-object p3, La01;->e:Ljava/lang/reflect/Method;

    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, p2

    aput-object v4, p1, v0

    .line 11
    invoke-virtual {p3, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    invoke-virtual {p0, v1}, Lm01;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_3
    throw v1

    :cond_4
    if-eqz p3, :cond_6

    .line 14
    iget-object p3, p3, LT01;->g:Landroid/view/textclassifier/TextClassification;

    if-eqz p3, :cond_6

    .line 15
    iget-object v4, p0, Lm01;->c:Ll01;

    aget v5, v2, v3

    aget v2, v2, p2

    check-cast v4, La01;

    if-eqz v4, :cond_5

    .line 16
    :try_start_1
    sget-object v4, La01;->d:Ljava/lang/reflect/Method;

    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, p2

    aput-object p3, p1, v0

    .line 18
    invoke-virtual {v4, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :catch_1
    invoke-virtual {p0, v1}, Lm01;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_5
    throw v1

    .line 21
    :cond_6
    iget-object p1, p0, Lm01;->c:Ll01;

    aget p3, v2, v3

    aget v2, v2, p2

    check-cast p1, La01;

    if-eqz p1, :cond_7

    .line 22
    :try_start_2
    sget-object p1, La01;->c:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    :catch_2
    invoke-virtual {p0, v1}, Lm01;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 24
    :cond_7
    throw v1
.end method
