.class public LBh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LHh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lpt0;->g()Z

    move-result v0

    const-string v1, "Settings.ShowHomeButtonPreferenceState"

    .line 2
    invoke-static {v1, v0}, LfV;->a(Ljava/lang/String;Z)V

    .line 3
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object v0

    invoke-virtual {v0}, Lpt0;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Settings.HomePageIsCustomized"

    .line 4
    invoke-static {v1, v0}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method
