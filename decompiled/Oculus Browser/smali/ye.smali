.class public final Lye;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final g:Landroid/graphics/PorterDuff$Mode;

.field public static h:Lye;

.field public static final i:Lve;

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:[I


# instance fields
.field public a:Ljava/util/WeakHashMap;

.field public b:LJ6;

.field public c:Le7;

.field public final d:Ljava/util/WeakHashMap;

.field public e:Landroid/util/TypedValue;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    .line 2
    new-instance v0, Lve;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lve;-><init>(I)V

    sput-object v0, Lye;->i:Lve;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    sput-object v1, Lye;->j:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_1

    sput-object v1, Lye;->k:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 5
    fill-array-data v1, :array_2

    sput-object v1, Lye;->l:[I

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_3

    sput-object v0, Lye;->m:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_4

    sput-object v1, Lye;->n:[I

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_5

    sput-object v0, Lye;->o:[I

    return-void

    :array_0
    .array-data 4
        0x7f08007e
        0x7f08007c
        0x7f08002d
    .end array-data

    :array_1
    .array-data 4
        0x7f080043
        0x7f08006c
        0x7f08004a
        0x7f080045
        0x7f080046
        0x7f080049
        0x7f080048
    .end array-data

    :array_2
    .array-data 4
        0x7f08007b
        0x7f08007d
        0x7f08003c
        0x7f080074
        0x7f080075
        0x7f080077
        0x7f080079
        0x7f080076
        0x7f080078
        0x7f08007a
    .end array-data

    :array_3
    .array-data 4
        0x7f080062
        0x7f08003a
        0x7f080061
    .end array-data

    :array_4
    .array-data 4
        0x7f080072
        0x7f08007f
    .end array-data

    :array_5
    .array-data 4
        0x7f080030
        0x7f080035
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lye;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 5

    const-class v0, Lye;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lye;->i:Lve;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    add-int/lit8 v3, p0, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    .line 104
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v4

    add-int/2addr v4, v3

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, LR6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PorterDuffColorFilter;

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    sget-object p0, Lye;->i:Lve;

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result p1

    add-int/2addr p1, v3

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LR6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    .line 110
    :cond_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    .line 112
    :cond_2
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()Lye;
    .locals 4

    const-class v0, Lye;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lye;->h:Lye;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lye;

    invoke-direct {v1}, Lye;-><init>()V

    sput-object v1, Lye;->h:Lye;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 4
    new-instance v2, Lxe;

    invoke-direct {v2}, Lxe;-><init>()V

    const-string v3, "vector"

    invoke-virtual {v1, v3, v2}, Lye;->a(Ljava/lang/String;Lwe;)V

    .line 5
    new-instance v2, Lue;

    invoke-direct {v2}, Lue;-><init>()V

    const-string v3, "animated-vector"

    invoke-virtual {v1, v3, v2}, Lye;->a(Ljava/lang/String;Lwe;)V

    .line 6
    new-instance v2, Lte;

    invoke-direct {v2}, Lte;-><init>()V

    const-string v3, "animated-selector"

    invoke-virtual {v1, v3, v2}, Lye;->a(Ljava/lang/String;Lwe;)V

    .line 7
    :cond_0
    sget-object v1, Lye;->h:Lye;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 113
    invoke-static {p0}, Lmf;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 115
    sget-object p2, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Lye;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;LLh;[I)V
    .locals 3

    .line 93
    invoke-static {p0}, Lmf;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-boolean v0, p1, LLh;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, LLh;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    .line 97
    :cond_2
    :goto_0
    iget-boolean v0, p1, LLh;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, LLh;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-boolean v2, p1, LLh;->c:Z

    if-eqz v2, :cond_4

    iget-object p1, p1, LLh;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 99
    invoke-static {p2, p1}, Lye;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 100
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 101
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_7

    .line 102
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_7
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    .line 54
    sget-object v0, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    .line 55
    sget-object v1, Lye;->j:[I

    invoke-static {v1, p1}, Lye;->a([II)Z

    move-result v1

    const v2, 0x1010031

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    const v2, 0x7f040097

    :goto_0
    const/4 p1, 0x1

    const/4 v1, -0x1

    goto :goto_1

    .line 56
    :cond_0
    sget-object v1, Lye;->l:[I

    invoke-static {v1, p1}, Lye;->a([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x7f040095

    goto :goto_0

    .line 57
    :cond_1
    sget-object v1, Lye;->m:[I

    invoke-static {v1, p1}, Lye;->a([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    const v1, 0x7f080056

    if-ne p1, v1, :cond_3

    const v2, 0x1010030

    const p1, 0x42233333    # 40.8f

    .line 59
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v1, p1

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const v1, 0x7f08003e

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_7

    .line 60
    invoke-static {p2}, Lmf;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 61
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 62
    :cond_5
    invoke-static {p0, v2}, LJh;->b(Landroid/content/Context;I)I

    move-result p0

    .line 63
    invoke-static {p0, v0}, Lye;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v1, v3, :cond_6

    .line 64
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return v5

    :cond_7
    return v4
.end method

.method public static a([II)Z
    .locals 4

    .line 68
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, 0x7f04009f

    .line 78
    invoke-static {p1, v2}, LJh;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const v5, 0x7f040095

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 80
    sget-object v2, LJh;->b:[I

    aput-object v2, v1, v7

    .line 81
    aget-object v2, v1, v7

    invoke-virtual {v3, v2, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v0, v7

    .line 82
    sget-object v2, LJh;->e:[I

    aput-object v2, v1, v6

    .line 83
    invoke-static {p1, v5}, LJh;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v6

    .line 84
    sget-object p1, LJh;->f:[I

    aput-object p1, v1, v4

    .line 85
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, v0, v4

    goto :goto_0

    .line 86
    :cond_0
    sget-object v3, LJh;->b:[I

    aput-object v3, v1, v7

    .line 87
    invoke-static {p1, v2}, LJh;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v7

    .line 88
    sget-object v3, LJh;->e:[I

    aput-object v3, v1, v6

    .line 89
    invoke-static {p1, v5}, LJh;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v6

    .line 90
    sget-object v3, LJh;->f:[I

    aput-object v3, v1, v4

    .line 91
    invoke-static {p1, v2}, LJh;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    .line 92
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, 0x7f040096

    .line 69
    invoke-static {p1, v2}, LJh;->b(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f040094

    .line 70
    invoke-static {p1, v3}, LJh;->a(Landroid/content/Context;I)I

    move-result p1

    .line 71
    sget-object v3, LJh;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    .line 72
    sget-object p1, LJh;->d:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 73
    invoke-static {v2, p2}, Ln4;->b(II)I

    move-result p1

    aput p1, v0, v3

    .line 74
    sget-object p1, LJh;->c:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    .line 75
    invoke-static {v2, p2}, Ln4;->b(II)I

    move-result p1

    aput p1, v0, v3

    .line 76
    sget-object p1, LJh;->f:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    .line 77
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lye;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lye;->f:Z

    const v1, 0x7f080080

    .line 118
    invoke-virtual {p0, p1, v1}, Lye;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 119
    instance-of v3, v1, LY0;

    if-nez v3, :cond_2

    const-string v3, "android.graphics.drawable.VectorDrawable"

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    .line 121
    :goto_1
    invoke-virtual {p0, p1, p2}, Lye;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 122
    invoke-virtual {p0, p1, p2}, Lye;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 123
    invoke-static {p1, p2}, LR3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 124
    invoke-virtual {p0, p1, p2, p3, v0}, Lye;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 125
    invoke-static {v0}, Lmf;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 127
    :cond_7
    :try_start_1
    iput-boolean v2, p0, Lye;->f:Z

    .line 128
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 8
    invoke-virtual {p0, p1, p2}, Lye;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p4}, Lmf;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 11
    :cond_0
    invoke-static {p4}, Lx4;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 12
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f080070

    if-ne p2, p1, :cond_1

    .line 13
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f08006d

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    const v5, 0x7f040095

    const v6, 0x7f040097

    if-ne p2, v0, :cond_3

    .line 15
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 16
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 17
    invoke-static {p1, v6}, LJh;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    .line 18
    invoke-static {p3, v0, v1}, Lye;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 19
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 20
    invoke-static {p1, v6}, LJh;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    .line 21
    invoke-static {p3, v0, v1}, Lye;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 22
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 23
    invoke-static {p1, v5}, LJh;->b(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    .line 24
    invoke-static {p2, p1, p3}, Lye;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f080064

    if-eq p2, v0, :cond_5

    const v0, 0x7f080063

    if-eq p2, v0, :cond_5

    const v0, 0x7f080065

    if-ne p2, v0, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    invoke-static {p1, p2, p4}, Lye;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p3, :cond_6

    move-object p4, v1

    goto :goto_1

    .line 26
    :cond_5
    :goto_0
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 27
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 28
    invoke-static {p1, v6}, LJh;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    .line 29
    invoke-static {p3, v0, v1}, Lye;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 30
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 31
    invoke-static {p1, v5}, LJh;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    .line 32
    invoke-static {p3, v0, v1}, Lye;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 33
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 34
    invoke-static {p1, v5}, LJh;->b(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Lye;->g:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-static {p2, p1, p3}, Lye;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :cond_6
    :goto_1
    return-object p4
.end method

.method public final declared-synchronized a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lye;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    monitor-exit p0

    return-object v1

    .line 38
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, v1}, LQ6;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 42
    :cond_1
    :try_start_2
    iget-object p1, v0, LQ6;->x:[J

    iget v2, v0, LQ6;->z:I

    invoke-static {p1, v2, p2, p3}, LN6;->a([JIJ)I

    move-result p1

    if-ltz p1, :cond_2

    .line 43
    iget-object p2, v0, LQ6;->y:[Ljava/lang/Object;

    aget-object p3, p2, p1

    sget-object v2, LQ6;->A:Ljava/lang/Object;

    if-eq p3, v2, :cond_2

    .line 44
    aput-object v2, p2, p1

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, v0, LQ6;->w:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lwe;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lye;->b:LJ6;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, Lye;->b:LJ6;

    .line 67
    :cond_0
    iget-object v0, p0, Lye;->b:LJ6;

    invoke-virtual {v0, p1, p2}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 48
    iget-object v0, p0, Lye;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, LQ6;

    invoke-direct {v0}, LQ6;-><init>()V

    .line 50
    iget-object v1, p0, Lye;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, LQ6;->c(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 52
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 53
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 4
    iget-object v0, p0, Lye;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lye;->e:Landroid/util/TypedValue;

    .line 6
    :cond_0
    iget-object v0, p0, Lye;->e:Landroid/util/TypedValue;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 8
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    .line 9
    invoke-virtual {p0, p1, v3, v4}, Lye;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const v5, 0x7f08003b

    if-ne p2, v5, :cond_2

    .line 10
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const v6, 0x7f08003a

    .line 11
    invoke-virtual {p0, p1, v6}, Lye;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, p2, v5

    const v5, 0x7f08003c

    .line 12
    invoke-virtual {p0, p1, v5}, Lye;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, p2, v2

    invoke-direct {v1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 13
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 14
    invoke-virtual {p0, p1, v3, v4, v1}, Lye;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    return-object v1
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lye;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ6;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, LQ6;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lye;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lye;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le7;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p2, v1}, Le7;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_0
    if-nez v1, :cond_f

    const v0, 0x7f08003f

    if-ne p2, v0, :cond_1

    const v0, 0x7f060014

    .line 5
    invoke-static {p1, v0}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    const v0, 0x7f080071

    if-ne p2, v0, :cond_2

    const v0, 0x7f060017

    .line 6
    invoke-static {p1, v0}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f080070

    if-ne p2, v0, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lye;->a(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f080034

    if-ne p2, v0, :cond_4

    const v0, 0x7f040094

    .line 8
    invoke-static {p1, v0}, LJh;->b(Landroid/content/Context;I)I

    move-result v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lye;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f08002f

    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lye;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_5
    const v0, 0x7f080033

    if-ne p2, v0, :cond_6

    const v0, 0x7f040091

    .line 11
    invoke-static {p1, v0}, LJh;->b(Landroid/content/Context;I)I

    move-result v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lye;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_6
    const v0, 0x7f08006e

    if-eq p2, v0, :cond_b

    const v0, 0x7f08006f

    if-ne p2, v0, :cond_7

    goto :goto_0

    .line 13
    :cond_7
    sget-object v0, Lye;->k:[I

    invoke-static {v0, p2}, Lye;->a([II)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f040097

    .line 14
    invoke-static {p1, v0}, LJh;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_8
    sget-object v0, Lye;->n:[I

    invoke-static {v0, p2}, Lye;->a([II)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f060013

    .line 16
    invoke-static {p1, v0}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    .line 17
    :cond_9
    sget-object v0, Lye;->o:[I

    invoke-static {v0, p2}, Lye;->a([II)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f060012

    .line 18
    invoke-static {p1, v0}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_a
    const v0, 0x7f08006b

    if-ne p2, v0, :cond_c

    const v0, 0x7f060015

    .line 19
    invoke-static {p1, v0}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_b
    :goto_0
    const v0, 0x7f060016

    .line 20
    invoke-static {p1, v0}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_c
    :goto_1
    if-eqz v1, :cond_f

    .line 21
    iget-object v0, p0, Lye;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_d

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lye;->a:Ljava/util/WeakHashMap;

    .line 23
    :cond_d
    iget-object v0, p0, Lye;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le7;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Le7;

    const/16 v2, 0xa

    .line 25
    invoke-direct {v0, v2}, Le7;-><init>(I)V

    .line 26
    iget-object v2, p0, Lye;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_e
    invoke-virtual {v0, p2, v1}, Le7;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_f
    monitor-exit p0

    return-object v1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1
    iget-object v0, p0, Lye;->b:LJ6;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ld7;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Lye;->c:Le7;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p2, v1}, Le7;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lye;->b:LJ6;

    .line 6
    invoke-virtual {v3, v0}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    .line 7
    :cond_1
    new-instance v0, Le7;

    const/16 v1, 0xa

    .line 8
    invoke-direct {v0, v1}, Le7;-><init>(I)V

    .line 9
    iput-object v0, p0, Lye;->c:Le7;

    .line 10
    :cond_2
    iget-object v0, p0, Lye;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lye;->e:Landroid/util/TypedValue;

    .line 12
    :cond_3
    iget-object v0, p0, Lye;->e:Landroid/util/TypedValue;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 15
    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    iget v6, v0, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 16
    invoke-virtual {p0, p1, v4, v5}, Lye;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6

    .line 17
    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 18
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 20
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    if-eq v8, v3, :cond_5

    goto :goto_0

    :cond_5
    if-ne v8, v9, :cond_7

    .line 21
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 22
    iget-object v8, p0, Lye;->c:Le7;

    invoke-virtual {v8, p2, v3}, Le7;->a(ILjava/lang/Object;)V

    .line 23
    iget-object v8, p0, Lye;->b:LJ6;

    invoke-virtual {v8, v3}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwe;

    if-eqz v3, :cond_6

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 25
    invoke-interface {v3, p1, v1, v7, v8}, Lwe;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_6
    if-eqz v6, :cond_8

    .line 26
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 27
    invoke-virtual {p0, p1, v4, v5, v6}, Lye;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 28
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "AppCompatDrawableManag"

    const-string v1, "Exception while inflating drawable"

    .line 29
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    if-nez v6, :cond_9

    .line 30
    iget-object p1, p0, Lye;->c:Le7;

    invoke-virtual {p1, p2, v2}, Le7;->a(ILjava/lang/Object;)V

    :cond_9
    return-object v6

    :cond_a
    return-object v1
.end method
