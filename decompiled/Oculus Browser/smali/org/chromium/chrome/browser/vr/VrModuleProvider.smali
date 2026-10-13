.class public Lorg/chromium/chrome/browser/vr/VrModuleProvider;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhl0;


# static fields
.field public static c:LLO0;

.field public static final d:Ljava/util/List;


# instance fields
.field public a:J

.field public b:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a:J

    return-void
.end method

.method public static a()LJO0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->b()LLO0;

    move-result-object v0

    check-cast v0, LMO0;

    .line 2
    iget-object v0, v0, LMO0;->a:LKO0;

    return-object v0
.end method

.method public static a(LZT0;)V
    .locals 1

    .line 3
    new-instance v0, LUO0;

    invoke-direct {v0, p0}, LUO0;-><init>(LZT0;)V

    .line 4
    sget-object p0, LTO0;->a:LUT0;

    invoke-virtual {p0, v0}, LUT0;->a(LZT0;)V

    return-void
.end method

.method public static final synthetic a(LZT0;Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c:LLO0;

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v1

    .line 7
    check-cast v1, LKO0;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    throw v0

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, LZT0;->a(Z)V

    return-void
.end method

.method public static b()LLO0;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c:LLO0;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, LTO0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, LMO0;

    invoke-direct {v0}, LMO0;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c:LLO0;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, LTO0;->a:LUT0;

    invoke-virtual {v0}, LUT0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLO0;

    .line 5
    sput-object v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c:LLO0;

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c:LLO0;

    return-object v0
.end method

.method public static c()LPO0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->b()LLO0;

    move-result-object v0

    check-cast v0, LMO0;

    .line 2
    iget-object v0, v0, LMO0;->b:LRO0;

    return-object v0
.end method

.method public static create(J)Lorg/chromium/chrome/browser/vr/VrModuleProvider;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;-><init>(J)V

    return-object v0
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method private installModule(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    new-instance v0, Lil0;

    const v1, 0x7f130654

    invoke-direct {v0, p1, v1, p0}, Lil0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;ILhl0;)V

    .line 3
    iget-object p1, v0, Lil0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f1303e4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    iget v3, v0, Lil0;->b:I

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1, v1, v4}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    iput-object p1, v0, Lil0;->d:Lmf1;

    .line 8
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    :goto_0
    new-instance p1, LVO0;

    invoke-direct {p1, p0, v0}, LVO0;-><init>(Lorg/chromium/chrome/browser/vr/VrModuleProvider;Lil0;)V

    invoke-static {p1}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a(LZT0;)V

    return-void
.end method

.method public static isModuleInstalled()Z
    .locals 1

    .line 1
    invoke-static {}, LTO0;->a()Z

    move-result v0

    return v0
.end method

.method private onNativeDestroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .line 10
    iget-wide v0, p0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->installModule(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    invoke-static {v0, v1, p0, p1}, LJ/N;->Mmw1DU8y(JLjava/lang/Object;Z)V

    :goto_0
    return-void
.end method
