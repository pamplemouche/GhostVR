.class public abstract Lq4;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lv4;

.field public static final b:LR6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lu4;

    invoke-direct {v0}, Lu4;-><init>()V

    sput-object v0, Lq4;->a:Lv4;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lt4;

    invoke-direct {v0}, Lt4;-><init>()V

    sput-object v0, Lq4;->a:Lv4;

    goto :goto_1

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    .line 4
    sget-object v0, Ls4;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    const-string v0, "TypefaceCompatApi24Impl"

    const-string v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    sget-object v0, Ls4;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 7
    new-instance v0, Ls4;

    invoke-direct {v0}, Ls4;-><init>()V

    sput-object v0, Lq4;->a:Lv4;

    goto :goto_1

    .line 8
    :cond_4
    new-instance v0, Lr4;

    invoke-direct {v0}, Lr4;-><init>()V

    sput-object v0, Lq4;->a:Lv4;

    .line 9
    :goto_1
    new-instance v0, LR6;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LR6;-><init>(I)V

    sput-object v0, Lq4;->b:LR6;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .line 12
    sget-object v0, Lq4;->a:Lv4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lv4;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 13
    invoke-static {p1, p2, p4}, Lq4;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 14
    sget-object p2, Lq4;->b:LR6;

    invoke-virtual {p2, p1, p0}, LR6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ld4;Landroid/content/res/Resources;IILl4;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7

    .line 2
    instance-of v1, p1, Lg4;

    if-eqz v1, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lg4;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    .line 4
    iget v5, v0, Lg4;->c:I

    if-nez v5, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    :goto_0
    const/4 v4, 0x1

    :cond_1
    if-eqz p7, :cond_2

    .line 5
    iget v1, v0, Lg4;->b:I

    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    const/4 v5, -0x1

    .line 6
    :goto_1
    iget-object v1, v0, Lg4;->a:Li6;

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    .line 7
    invoke-static/range {v0 .. v6}, Lq6;->a(Landroid/content/Context;Li6;Ll4;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 8
    :cond_3
    sget-object v1, Lq4;->a:Lv4;

    move-object v0, p1

    check-cast v0, Le4;

    invoke-virtual {v1, p0, v0, p2, p4}, Lv4;->a(Landroid/content/Context;Le4;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p5, :cond_5

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p5, v0, p6}, Ll4;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_4
    const/4 v1, -0x3

    .line 10
    invoke-virtual {p5, v1, p6}, Ll4;->a(ILandroid/os/Handler;)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 11
    sget-object v1, Lq4;->b:LR6;

    invoke-static {p2, p3, p4}, Lq4;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LR6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
