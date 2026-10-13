.class public Lorg/chromium/components/navigation_interception/NavigationParams;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->b:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->c:Z

    .line 5
    iput p5, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->d:I

    .line 6
    iput-boolean p6, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->e:Z

    .line 7
    iput-boolean p7, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->f:Z

    .line 8
    iput-boolean p8, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->g:Z

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZZIZZZZZ)Lorg/chromium/components/navigation_interception/NavigationParams;
    .locals 12

    .line 1
    new-instance v11, Lorg/chromium/components/navigation_interception/NavigationParams;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/chromium/components/navigation_interception/NavigationParams;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIZZZZZ)V

    return-object v11
.end method
