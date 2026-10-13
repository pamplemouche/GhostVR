.class public LZ60;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static f:LZ60;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, LZ60;->a:Z

    .line 4
    iput-boolean v2, p0, LZ60;->b:Z

    .line 5
    iput-boolean v2, p0, LZ60;->c:Z

    .line 6
    iput-boolean v1, p0, LZ60;->d:Z

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v2, p0, LZ60;->a:Z

    .line 8
    iput-boolean v2, p0, LZ60;->b:Z

    .line 9
    iput-boolean v1, p0, LZ60;->c:Z

    .line 10
    iput-boolean v2, p0, LZ60;->d:Z

    .line 11
    :goto_0
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iput-boolean v1, p0, LZ60;->c:Z

    .line 13
    :cond_1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    .line 14
    iget-boolean v1, p0, LZ60;->c:Z

    const-string v3, "enable-accessibility-tab-switcher"

    .line 15
    invoke-virtual {v0, v3}, LwT;->c(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    iput-boolean v1, p0, LZ60;->c:Z

    const-string v1, "disable-fullscreen"

    .line 16
    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, LZ60;->e:Z

    .line 17
    iget-boolean v0, p0, LZ60;->c:Z

    return-void
.end method

.method public static a()Z
    .locals 3

    .line 1
    invoke-static {}, LZ60;->b()LZ60;

    move-result-object v0

    iget-boolean v0, v0, LZ60;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, LuO0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    sget-object v0, Lay0;->a:Lcy0;

    const-string v2, "accessibility_tab_switcher"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()LZ60;
    .locals 1

    .line 1
    sget-object v0, LZ60;->f:LZ60;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LZ60;

    invoke-direct {v0}, LZ60;-><init>()V

    sput-object v0, LZ60;->f:LZ60;

    .line 3
    :cond_0
    sget-object v0, LZ60;->f:LZ60;

    return-object v0
.end method
