.class public abstract LGl0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LVU;

.field public static final b:LaV;

.field public static final c:LaV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LVU;

    const-string v1, "Android.DarkTheme.EnabledState"

    invoke-direct {v0, v1}, LVU;-><init>(Ljava/lang/String;)V

    sput-object v0, LGl0;->a:LVU;

    .line 2
    new-instance v0, LaV;

    const/4 v1, 0x3

    const-string v2, "Android.DarkTheme.EnabledReason"

    invoke-direct {v0, v2, v1}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGl0;->b:LaV;

    .line 3
    new-instance v0, LaV;

    const-string v2, "Android.DarkTheme.Preference.State"

    invoke-direct {v0, v2, v1}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGl0;->c:LaV;

    return-void
.end method

.method public static a(I)V
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Android.DarkTheme.Preference.Dark"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Android.DarkTheme.Preference.Light"

    .line 2
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Android.DarkTheme.Preference.SystemDefault"

    .line 3
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 4
    :goto_0
    sget-object v0, LGl0;->c:LaV;

    invoke-virtual {v0, p0}, LaV;->a(I)V

    return-void
.end method
