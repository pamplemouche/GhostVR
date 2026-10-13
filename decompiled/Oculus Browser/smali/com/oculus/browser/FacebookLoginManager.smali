.class public Lcom/oculus/browser/FacebookLoginManager;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final FACEBOOK_APP_ID:Ljava/lang/String; = "1562231310457908"

.field public static final TAG:Ljava/lang/String; = "FACEBOOK_LOGIN_MANAGER"

.field public static final horizonCert:Ljava/lang/String; = "3082038030820268a00302010202045390c873300d06092a864886f70d0101050500308181310b3009060355040613024341311330110603550408130a43616c69666f726e6961310f300d06035504071306497276696e6531183016060355040a130f4f63756c75732056522c20496e632e31183016060355040b130f4f63756c75732056522c20496e632e311830160603550403130f4f63756c75732056522c20496e632e301e170d3134303630353139343334375a170d3431313032313139343334375a308181310b3009060355040613024341311330110603550408130a43616c69666f726e6961310f300d06035504071306497276696e6531183016060355040a130f4f63756c75732056522c20496e632e31183016060355040b130f4f63756c75732056522c20496e632e311830160603550403130f4f63756c75732056522c20496e632e30820122300d06092a864886f70d01010105000382010f003082010a0282010100810913c89c710f0c1baf44cbd759cb193a9ceacc3ff64f6c710519cdc30f55f913285c74e8fd3e3220e55524cb881921a4de9b68a2f6a55eedd1da6c7f65f11adb983831e87797d70f411fd654dffbec956308bd7bbd8fb64215f15f315831a869b3ebc90a268b069e4b15e5861cbe1ef2b82c543f394410324891f161e0cecd1544c2b3e4be220e61312d1169950b3fc7c9c76c5eb4b723033caf65f5a9aadcb817c7923daea4266d0e874fd1f82480090f70b631d2b4ee4704c406c30c0d31cd75a9159ba37002ccfdff6752d61543252d5030ec0fff14e505b514027b702641b0aa6e65e5a3b80c847fc3f866d936234e7b91f8129749ac5383067bd74dcb0203010001300d06092a864886f70d01010505000382010100457e0ddb298616761934a9ff2a91048872af6f004855a0e866f4ffea0a4dfb1ff0aa2cf4ffac55f87d2d8e8273a867d4ef63d2fecb468d081ad405b3359fc576eeac839bacebb111d65f39a6930509b2986268c6a65554dfbd3eb40904b9a1d0b476c3a94b128bd975cd285635e2a225c4c3f7664eb8b98962d45416705805e4434bb826c7cb095c7ddb22cf99f92b6bc4e1b2a7e93d0ecb8d9b4543efed428589c2d52b16cde1c52dade04ffddcd3aa70aacef2a5c8dd89961f7e2b425ed1400f9673278bee714777d6b681eebd176de9345be39c800a4f78c41714d61018dbd5f3750fc8fe7ba35c2172b796fb5abb6c2b61528d1cddc84d2e16b685d02e66"

.field public static final msHorizonSignature:Landroid/content/pm/Signature;

.field public static msKeyPromptForLogin:Ljava/lang/String;


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mCanLogIn:Z

.field public mContext:Landroid/content/Context;

.field public mCookies:Ljava/util/ArrayList;

.field public mLoginChecked:Z

.field public mNativeFacebookLoginManager:J

.field public mProfilePicUri:Ljava/lang/String;

.field public mProfilePicUriLarge:Ljava/lang/String;

.field public mPromptOnUpdate:Z

.field public mUserId:Ljava/lang/String;

.field public mUserName:Ljava/lang/String;

.field public m_c_user:Ljava/lang/String;

.field public m_datrFound:Ljava/lang/Boolean;

.field public m_xsFound:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082038030820268a00302010202045390c873300d06092a864886f70d0101050500308181310b3009060355040613024341311330110603550408130a43616c69666f726e6961310f300d06035504071306497276696e6531183016060355040a130f4f63756c75732056522c20496e632e31183016060355040b130f4f63756c75732056522c20496e632e311830160603550403130f4f63756c75732056522c20496e632e301e170d3134303630353139343334375a170d3431313032313139343334375a308181310b3009060355040613024341311330110603550408130a43616c69666f726e6961310f300d06035504071306497276696e6531183016060355040a130f4f63756c75732056522c20496e632e31183016060355040b130f4f63756c75732056522c20496e632e311830160603550403130f4f63756c75732056522c20496e632e30820122300d06092a864886f70d01010105000382010f003082010a0282010100810913c89c710f0c1baf44cbd759cb193a9ceacc3ff64f6c710519cdc30f55f913285c74e8fd3e3220e55524cb881921a4de9b68a2f6a55eedd1da6c7f65f11adb983831e87797d70f411fd654dffbec956308bd7bbd8fb64215f15f315831a869b3ebc90a268b069e4b15e5861cbe1ef2b82c543f394410324891f161e0cecd1544c2b3e4be220e61312d1169950b3fc7c9c76c5eb4b723033caf65f5a9aadcb817c7923daea4266d0e874fd1f82480090f70b631d2b4ee4704c406c30c0d31cd75a9159ba37002ccfdff6752d61543252d5030ec0fff14e505b514027b702641b0aa6e65e5a3b80c847fc3f866d936234e7b91f8129749ac5383067bd74dcb0203010001300d06092a864886f70d01010505000382010100457e0ddb298616761934a9ff2a91048872af6f004855a0e866f4ffea0a4dfb1ff0aa2cf4ffac55f87d2d8e8273a867d4ef63d2fecb468d081ad405b3359fc576eeac839bacebb111d65f39a6930509b2986268c6a65554dfbd3eb40904b9a1d0b476c3a94b128bd975cd285635e2a225c4c3f7664eb8b98962d45416705805e4434bb826c7cb095c7ddb22cf99f92b6bc4e1b2a7e93d0ecb8d9b4543efed428589c2d52b16cde1c52dade04ffddcd3aa70aacef2a5c8dd89961f7e2b425ed1400f9673278bee714777d6b681eebd176de9345be39c800a4f78c41714d61018dbd5f3750fc8fe7ba35c2172b796fb5abb6c2b61528d1cddc84d2e16b685d02e66"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/browser/FacebookLoginManager;->msHorizonSignature:Landroid/content/pm/Signature;

    const-string v0, "FACEBOOK_LOGIN_MANAGER_PROMPT_"

    .line 2
    sput-object v0, Lcom/oculus/browser/FacebookLoginManager;->msKeyPromptForLogin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/oculus/browser/FacebookLoginManager;->mLoginChecked:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager;->m_c_user:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager;->m_xsFound:Ljava/lang/Boolean;

    .line 6
    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager;->m_datrFound:Ljava/lang/Boolean;

    .line 7
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mNativeFacebookLoginManager:J

    return-void
.end method

.method private IsLoggedIn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->m_xsFound:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->m_datrFound:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->m_c_user:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private UpdateSsoData()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mProfilePicUriLarge:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mCookies:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oculus/browser/FacebookLoginManager;->msKeyPromptForLogin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/oculus/browser/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 4
    iget-wide v3, p0, Lcom/oculus/browser/FacebookLoginManager;->mNativeFacebookLoginManager:J

    iget-object v5, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserName:Ljava/lang/String;

    iget-object v7, p0, Lcom/oculus/browser/FacebookLoginManager;->mProfilePicUriLarge:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->IsLoggedIn()Z

    move-result v9

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v10}, Lcom/oculus/browser/FacebookLoginManager;->nativeUpdateSsoData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    :cond_1
    return-void
.end method

.method private UpdateSsoDataOnUIThread()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/FacebookLoginManager$2;

    invoke-direct {v0, p0}, Lcom/oculus/browser/FacebookLoginManager$2;-><init>(Lcom/oculus/browser/FacebookLoginManager;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/browser/FacebookLoginManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->queryCookies()V

    return-void
.end method

.method public static synthetic access$100(Lcom/oculus/browser/FacebookLoginManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->UpdateSsoDataOnUIThread()V

    return-void
.end method

.method public static synthetic access$200(Lcom/oculus/browser/FacebookLoginManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->UpdateSsoData()V

    return-void
.end method

.method private horizonHasValidSignature()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/oculus/browser/FacebookLoginManager;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.oculus.horizon"

    const/16 v4, 0x40

    .line 3
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4
    array-length v3, v2

    if-lez v3, :cond_0

    .line 5
    aget-object v1, v2, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Horizon Package Missing: "

    .line 6
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "FACEBOOK_LOGIN_MANAGER"

    invoke-static {v3, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    :goto_0
    sget-object v0, Lcom/oculus/browser/FacebookLoginManager;->msHorizonSignature:Landroid/content/pm/Signature;

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private injectComplete(Z)V
    .locals 0

    return-void
.end method

.method private native nativeInit()J
.end method

.method private native nativeInjectCookieAsync(JLjava/lang/String;Z)V
.end method

.method private native nativeProfileIsLoggedInAsync(J)V
.end method

.method private native nativeUpdateSsoData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
.end method

.method private onCookieChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->IsLoggedIn()Z

    move-result v0

    const-string v1, "c_user"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object p2, p0, Lcom/oculus/browser/FacebookLoginManager;->m_c_user:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const-string v1, "xs"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager;->m_xsFound:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    const-string v1, "datr"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager;->m_datrFound:Ljava/lang/Boolean;

    .line 8
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/oculus/browser/FacebookLoginManager;->mLoginChecked:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->IsLoggedIn()Z

    move-result p1

    if-eq v0, p1, :cond_6

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager;->mCookies:Ljava/util/ArrayList;

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/oculus/browser/FacebookLoginManager;->UpdateCookiesAsync()V

    :cond_6
    return-void
.end method

.method private onLoginChecked()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mLoginChecked:Z

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/FacebookLoginManager;->UpdateCookiesAsync()V

    return-void
.end method

.method private queryCookies()V
    .locals 0

    return-void
.end method

.method private queryFbConnect()V
    .locals 0

    return-void
.end method


# virtual methods
.method public Decline()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oculus/browser/FacebookLoginManager;->msKeyPromptForLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/browser/Preferences;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public Login()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mCookies:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/SessionCookie;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/oculus/browser/SessionCookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oculus/browser/SessionCookie;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v1, Lcom/oculus/browser/SessionCookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "; Domain="

    .line 5
    invoke-static {v2, v3}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/oculus/browser/SessionCookie;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, v1, Lcom/oculus/browser/SessionCookie;->expires:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "; Expires="

    .line 7
    invoke-static {v2, v3}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/oculus/browser/SessionCookie;->expires:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_0
    iget-wide v3, p0, Lcom/oculus/browser/FacebookLoginManager;->mNativeFacebookLoginManager:J

    iget-boolean v1, v1, Lcom/oculus/browser/SessionCookie;->httponly:Z

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/oculus/browser/FacebookLoginManager;->nativeInjectCookieAsync(JLjava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-wide v6, p0, Lcom/oculus/browser/FacebookLoginManager;->mNativeFacebookLoginManager:J

    iget-object v8, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserId:Ljava/lang/String;

    iget-object v9, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserName:Ljava/lang/String;

    iget-object v10, p0, Lcom/oculus/browser/FacebookLoginManager;->mProfilePicUriLarge:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/oculus/browser/FacebookLoginManager;->nativeUpdateSsoData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oculus/browser/FacebookLoginManager;->msKeyPromptForLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/browser/FacebookLoginManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/browser/Preferences;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public Update(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/oculus/browser/FacebookLoginManager;->mPromptOnUpdate:Z

    .line 2
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->IsLoggedIn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->queryFbConnect()V

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mNativeFacebookLoginManager:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/browser/FacebookLoginManager;->nativeProfileIsLoggedInAsync(J)V

    return-void
.end method

.method public UpdateCookiesAsync()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mLoginChecked:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->IsLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager;->mCookies:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/oculus/browser/FacebookLoginManager$1;

    invoke-direct {v0, p0}, Lcom/oculus/browser/FacebookLoginManager$1;-><init>(Lcom/oculus/browser/FacebookLoginManager;)V

    sget-object v1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookLoginManager;->UpdateSsoDataOnUIThread()V

    :goto_0
    return-void
.end method
