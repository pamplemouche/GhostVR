.class public Le81;
.super Landroid/telephony/PhoneStateListener;
.source "PG"


# instance fields
.field public a:Landroid/telephony/ServiceState;

.field public final synthetic b:Lf81;


# direct methods
.method public synthetic constructor <init>(Lf81;Ld81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le81;->b:Lf81;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le81;->a:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iput-object p1, p0, Le81;->a:Landroid/telephony/ServiceState;

    .line 3
    iget-object p1, p0, Le81;->b:Lf81;

    .line 4
    invoke-static {}, Lf81;->b()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lf81;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lf81;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lf81;->c:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
