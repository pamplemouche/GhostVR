.class public Lcom/oculus/browser/Gatekeeper;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final GATEKEEPER_ENDPOINT:Ljava/lang/String; = "https://graph.oculus.com/features"

.field public static final PREFERENCE_KEY_FETCHED_PROJECT_NAMES:Ljava/lang/String; = "PROJECT_CACHE"

.field public static final PREFERENCE_KEY_FETCHED_VALUES:Ljava/lang/String; = "GK_CACHE"

.field public static final PREFERENCE_KEY_OVERRIDE_PROJECT_NAMES:Ljava/lang/String; = "OVERRIDE_PROJECT_NAMES"

.field public static final PREFERENCE_KEY_OVERRIDE_VALUES:Ljava/lang/String; = "OVERRIDE_VALUES"

.field public static final REFRESH_INTERVAL_MS:I = 0x36ee80

.field public static final TAG:Ljava/lang/String; = " Gatekeeper"

.field public static mInstance:Lcom/oculus/browser/Gatekeeper;


# instance fields
.field public handler:Landroid/os/Handler;

.field public mAccessToken:Ljava/lang/String;

.field public mCurrentProjectNames:[Ljava/lang/String;

.field public mDeviceHelpers:Lcom/oculus/browser/DeviceHelpers;

.field public mFetchedGatekeeperData:Ljava/util/HashMap;

.field public mGatekeeperData:Ljava/util/HashMap;

.field public mHaveStartedFetch:Z

.field public mPreferences:Lcom/oculus/browser/Preferences;

.field public mProjects:Lcom/oculus/browser/GatekeeperProjects;

.field public mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/GatekeeperProjects;Lcom/oculus/browser/Preferences;Lcom/oculus/browser/FacebookUrlRequestService;Lcom/oculus/browser/DeviceHelpers;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/oculus/browser/Gatekeeper;->handler:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/Gatekeeper;->mProjects:Lcom/oculus/browser/GatekeeperProjects;

    .line 4
    iput-object p2, p0, Lcom/oculus/browser/Gatekeeper;->mPreferences:Lcom/oculus/browser/Preferences;

    .line 5
    iput-object p4, p0, Lcom/oculus/browser/Gatekeeper;->mDeviceHelpers:Lcom/oculus/browser/DeviceHelpers;

    return-void
.end method

.method private defaultData()Ljava/util/HashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/oculus/browser/Gatekeeper;->mProjects:Lcom/oculus/browser/GatekeeperProjects;

    invoke-virtual {v2}, Lcom/oculus/browser/GatekeeperProjects;->getAllProjectNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/oculus/browser/Gatekeeper;->mProjects:Lcom/oculus/browser/GatekeeperProjects;

    invoke-virtual {v2}, Lcom/oculus/browser/GatekeeperProjects;->getAllProjectNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oculus/browser/Gatekeeper;->mProjects:Lcom/oculus/browser/GatekeeperProjects;

    invoke-virtual {v3}, Lcom/oculus/browser/GatekeeperProjects;->getAllDefaultValues()[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/oculus/browser/Gatekeeper;
    .locals 5

    .line 1
    sget-object v0, Lcom/oculus/browser/Gatekeeper;->mInstance:Lcom/oculus/browser/Gatekeeper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/oculus/browser/Gatekeeper;

    new-instance v1, Lcom/oculus/browser/GatekeeperProjects;

    invoke-direct {v1}, Lcom/oculus/browser/GatekeeperProjects;-><init>()V

    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v2

    new-instance v3, Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-direct {v3}, Lcom/oculus/browser/FacebookUrlRequestService;-><init>()V

    new-instance v4, Lcom/oculus/browser/DeviceHelpers;

    invoke-direct {v4}, Lcom/oculus/browser/DeviceHelpers;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/browser/Gatekeeper;-><init>(Lcom/oculus/browser/GatekeeperProjects;Lcom/oculus/browser/Preferences;Lcom/oculus/browser/FacebookUrlRequestService;Lcom/oculus/browser/DeviceHelpers;)V

    sput-object v0, Lcom/oculus/browser/Gatekeeper;->mInstance:Lcom/oculus/browser/Gatekeeper;

    .line 3
    :cond_0
    sget-object v0, Lcom/oculus/browser/Gatekeeper;->mInstance:Lcom/oculus/browser/Gatekeeper;

    return-object v0
.end method

.method private setGatekeeperDataFromDefaults(Lcom/oculus/browser/ShellEnvironment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/Gatekeeper;->defaultData()Ljava/util/HashMap;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/Gatekeeper;->mGatekeeperData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/Gatekeeper;->mGatekeeperData:Ljava/util/HashMap;

    :cond_0
    return-void
.end method


# virtual methods
.method public ensureDataAvailable(Lcom/oculus/browser/ShellEnvironment;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/oculus/browser/Gatekeeper;->setGatekeeperDataFromDefaults(Lcom/oculus/browser/ShellEnvironment;)V

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/Gatekeeper;->mGatekeeperData:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/oculus/browser/Gatekeeper;->mCurrentProjectNames:[Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/oculus/browser/Gatekeeper;->mCurrentProjectNames:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 9
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v6, p0, Lcom/oculus/browser/Gatekeeper;->mGatekeeperData:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_1

    :cond_0
    const-string v4, "0"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/oculus/browser/GatekeeperJni;->get()Lcom/oculus/browser/Gatekeeper$Natives;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-interface {v0, p1, v1}, Lcom/oculus/browser/Gatekeeper$Natives;->setGatekeeperData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getValue(Lcom/oculus/browser/GatekeeperProjects;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Gatekeeper;->mGatekeeperData:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/oculus/browser/GatekeeperProjects;->projectName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
