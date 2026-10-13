.class public final synthetic Lc81;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lf81;


# direct methods
.method public constructor <init>(Lf81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc81;->w:Lf81;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc81;->w:Lf81;

    .line 1
    invoke-static {}, Lf81;->b()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    new-instance v3, Le81;

    invoke-direct {v3, v0, v2}, Le81;-><init>(Lf81;Ld81;)V

    iput-object v3, v0, Lf81;->d:Le81;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v1, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 5
    :cond_0
    throw v2

    :cond_1
    :goto_0
    return-void
.end method
