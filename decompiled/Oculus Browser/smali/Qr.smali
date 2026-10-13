.class public final enum LQr;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:LQr;

.field public static final enum B:LQr;

.field public static final enum C:LQr;

.field public static final enum D:LQr;

.field public static final enum E:LQr;

.field public static final enum F:LQr;

.field public static final enum G:LQr;

.field public static final enum H:LQr;

.field public static final enum I:LQr;

.field public static final enum J:LQr;

.field public static final enum K:LQr;

.field public static final enum L:LQr;

.field public static final enum M:LQr;

.field public static final enum N:LQr;

.field public static final enum O:LQr;

.field public static final enum P:LQr;

.field public static final enum Q:LQr;

.field public static final enum R:LQr;

.field public static final enum S:LQr;

.field public static final enum T:LQr;

.field public static final enum U:LQr;

.field public static final enum V:LQr;

.field public static final enum W:LQr;

.field public static final enum X:LQr;

.field public static final enum Y:LQr;

.field public static final enum Z:LQr;

.field public static final enum a0:LQr;

.field public static final enum b0:LQr;

.field public static final enum c0:LQr;

.field public static final enum d0:LQr;

.field public static final enum e0:LQr;

.field public static final enum f0:LQr;

.field public static final enum g0:LQr;

.field public static final enum h0:LQr;

.field public static final enum i0:LQr;

.field public static final enum j0:LQr;

.field public static final enum k0:LQr;

.field public static final enum l0:LQr;

.field public static final enum m0:LQr;

.field public static final enum n0:LQr;

.field public static final enum o0:LQr;

.field public static final enum p0:LQr;

.field public static final enum q0:LQr;

.field public static final enum r0:LQr;

.field public static final enum s0:LQr;

.field public static final enum t0:LQr;

.field public static final enum u0:LQr;

.field public static final enum v0:LQr;

.field public static final enum w0:LQr;

.field public static final enum x:LQr;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum x0:LQr;

.field public static final enum y:LQr;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final synthetic y0:[LQr;

.field public static final enum z:LQr;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final w:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, LQr;

    const-string v1, "ClientLoginDisabled"

    const/4 v2, 0x0

    const-string v3, "CLIENT_LOGIN_DISABLED"

    invoke-direct {v0, v3, v2, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->x:LQr;

    new-instance v0, LQr;

    const-string v1, "DeviceManagementRequiredOrSyncDisabled"

    const/4 v3, 0x1

    const-string v4, "DEVICE_MANAGEMENT_REQUIRED"

    invoke-direct {v0, v4, v3, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->y:LQr;

    new-instance v0, LQr;

    const-string v1, "SocketTimeout"

    const/4 v4, 0x2

    const-string v5, "SOCKET_TIMEOUT"

    invoke-direct {v0, v5, v4, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->z:LQr;

    new-instance v0, LQr;

    const-string v1, "Ok"

    const/4 v5, 0x3

    const-string v6, "SUCCESS"

    invoke-direct {v0, v6, v5, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->A:LQr;

    new-instance v0, LQr;

    const-string v1, "UNKNOWN_ERR"

    const/4 v6, 0x4

    const-string v7, "UNKNOWN_ERROR"

    invoke-direct {v0, v7, v6, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->B:LQr;

    new-instance v0, LQr;

    const-string v1, "NetworkError"

    const/4 v7, 0x5

    const-string v8, "NETWORK_ERROR"

    invoke-direct {v0, v8, v7, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->C:LQr;

    new-instance v0, LQr;

    const-string v1, "ServiceUnavailable"

    const/4 v8, 0x6

    const-string v9, "SERVICE_UNAVAILABLE"

    invoke-direct {v0, v9, v8, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->D:LQr;

    new-instance v0, LQr;

    const-string v1, "InternalError"

    const/4 v9, 0x7

    const-string v10, "INTNERNAL_ERROR"

    invoke-direct {v0, v10, v9, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->E:LQr;

    new-instance v0, LQr;

    const-string v1, "BadAuthentication"

    const/16 v10, 0x8

    const-string v11, "BAD_AUTHENTICATION"

    invoke-direct {v0, v11, v10, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->F:LQr;

    new-instance v0, LQr;

    const-string v1, "EmptyConsumerPackageOrSig"

    const/16 v11, 0x9

    const-string v12, "EMPTY_CONSUMER_PKG_OR_SIG"

    invoke-direct {v0, v12, v11, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->G:LQr;

    new-instance v0, LQr;

    const-string v1, "InvalidSecondFactor"

    const/16 v12, 0xa

    const-string v13, "NEEDS_2F"

    invoke-direct {v0, v13, v12, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->H:LQr;

    new-instance v0, LQr;

    const-string v1, "PostSignInFlowRequired"

    const/16 v13, 0xb

    const-string v14, "NEEDS_POST_SIGN_IN_FLOW"

    invoke-direct {v0, v14, v13, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->I:LQr;

    new-instance v0, LQr;

    const-string v1, "NeedsBrowser"

    const/16 v14, 0xc

    const-string v15, "NEEDS_BROWSER"

    invoke-direct {v0, v15, v14, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->J:LQr;

    new-instance v0, LQr;

    const-string v1, "Unknown"

    const/16 v15, 0xd

    const-string v14, "UNKNOWN"

    invoke-direct {v0, v14, v15, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->K:LQr;

    new-instance v0, LQr;

    const-string v1, "NotVerified"

    const/16 v14, 0xe

    const-string v15, "NOT_VERIFIED"

    invoke-direct {v0, v15, v14, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->L:LQr;

    new-instance v0, LQr;

    const-string v1, "TermsNotAgreed"

    const/16 v15, 0xf

    const-string v14, "TERMS_NOT_AGREED"

    invoke-direct {v0, v14, v15, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->M:LQr;

    new-instance v0, LQr;

    const-string v1, "AccountDisabled"

    const/16 v14, 0x10

    const-string v15, "ACCOUNT_DISABLED"

    invoke-direct {v0, v15, v14, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->N:LQr;

    new-instance v0, LQr;

    const-string v1, "CaptchaRequired"

    const/16 v15, 0x11

    const-string v14, "CAPTCHA"

    invoke-direct {v0, v14, v15, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->O:LQr;

    new-instance v0, LQr;

    const-string v1, "AccountDeleted"

    const/16 v14, 0x12

    const-string v15, "ACCOUNT_DELETED"

    invoke-direct {v0, v15, v14, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->P:LQr;

    new-instance v0, LQr;

    const-string v1, "ServiceDisabled"

    const/16 v15, 0x13

    const-string v14, "SERVICE_DISABLED"

    invoke-direct {v0, v14, v15, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->Q:LQr;

    new-instance v0, LQr;

    const-string v1, "NeedPermission"

    const/16 v14, 0x14

    const-string v15, "NEED_PERMISSION"

    invoke-direct {v0, v15, v14, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->R:LQr;

    new-instance v0, LQr;

    const-string v1, "NeedRemoteConsent"

    const/16 v15, 0x15

    const-string v14, "NEED_REMOTE_CONSENT"

    invoke-direct {v0, v14, v15, v1}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->S:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x16

    const-string v14, "INVALID_SCOPE"

    const-string v15, "INVALID_SCOPE"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->T:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x17

    const-string v14, "UserCancel"

    const-string v15, "USER_CANCEL"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->U:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x18

    const-string v14, "PermissionDenied"

    const-string v15, "PERMISSION_DENIED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->V:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x19

    const-string v14, "INVALID_AUDIENCE"

    const-string v15, "INVALID_AUDIENCE"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->W:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x1a

    const-string v14, "UNREGISTERED_ON_API_CONSOLE"

    const-string v15, "UNREGISTERED_ON_API_CONSOLE"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->X:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x1b

    const-string v14, "ThirdPartyDeviceManagementRequired"

    const-string v15, "THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->Y:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x1c

    const-string v14, "DeviceManagementInternalError"

    const-string v15, "DM_INTERNAL_ERROR"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->Z:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x1d

    const-string v14, "DeviceManagementSyncDisabled"

    const-string v15, "DM_SYNC_DISABLED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->a0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x1e

    const-string v14, "DeviceManagementAdminBlocked"

    const-string v15, "DM_ADMIN_BLOCKED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->b0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x1f

    const-string v14, "DeviceManagementAdminPendingApproval"

    const-string v15, "DM_ADMIN_PENDING_APPROVAL"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->c0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x20

    const-string v14, "DeviceManagementStaleSyncRequired"

    const-string v15, "DM_STALE_SYNC_REQUIRED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->d0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x21

    const-string v14, "DeviceManagementDeactivated"

    const-string v15, "DM_DEACTIVATED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->e0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x22

    const-string v14, "DeviceManagementScreenlockRequired"

    const-string v15, "DM_SCREENLOCK_REQUIRED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->f0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x23

    const-string v14, "DeviceManagementRequired"

    const-string v15, "DM_REQUIRED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->g0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x24

    const-string v14, "ALREADY_HAS_GMAIL"

    const-string v15, "ALREADY_HAS_GMAIL"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->h0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x25

    const-string v14, "WeakPassword"

    const-string v15, "BAD_PASSWORD"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->i0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x26

    const-string v14, "BadRequest"

    const-string v15, "BAD_REQUEST"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->j0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x27

    const-string v14, "BadUsername"

    const-string v15, "BAD_USERNAME"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->k0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x28

    const-string v14, "DeletedGmail"

    const-string v15, "DELETED_GMAIL"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->l0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x29

    const-string v14, "ExistingUsername"

    const-string v15, "EXISTING_USERNAME"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->m0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x2a

    const-string v14, "LoginFail"

    const-string v15, "LOGIN_FAIL"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->n0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x2b

    const-string v14, "NotLoggedIn"

    const-string v15, "NOT_LOGGED_IN"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->o0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x2c

    const-string v14, "NoGmail"

    const-string v15, "NO_GMAIL"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->p0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x2d

    const-string v14, "RequestDenied"

    const-string v15, "REQUEST_DENIED"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->q0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x2e

    const-string v14, "ServerError"

    const-string v15, "SERVER_ERROR"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->r0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x2f

    const-string v14, "UsernameUnavailable"

    const-string v15, "USERNAME_UNAVAILABLE"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->s0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x30

    const-string v14, "GPlusOther"

    const-string v15, "GPLUS_OTHER"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->t0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x31

    const-string v14, "GPlusNickname"

    const-string v15, "GPLUS_NICKNAME"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->u0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x32

    const-string v14, "GPlusInvalidChar"

    const-string v15, "GPLUS_INVALID_CHAR"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->v0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x33

    const-string v14, "GPlusInterstitial"

    const-string v15, "GPLUS_INTERSTITIAL"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->w0:LQr;

    new-instance v0, LQr;

    const/16 v1, 0x34

    const-string v14, "ProfileUpgradeError"

    const-string v15, "GPLUS_PROFILE_ERROR"

    invoke-direct {v0, v15, v1, v14}, LQr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LQr;->x0:LQr;

    const/16 v1, 0x35

    new-array v1, v1, [LQr;

    sget-object v14, LQr;->x:LQr;

    aput-object v14, v1, v2

    sget-object v2, LQr;->y:LQr;

    aput-object v2, v1, v3

    sget-object v2, LQr;->z:LQr;

    aput-object v2, v1, v4

    sget-object v2, LQr;->A:LQr;

    aput-object v2, v1, v5

    sget-object v2, LQr;->B:LQr;

    aput-object v2, v1, v6

    sget-object v2, LQr;->C:LQr;

    aput-object v2, v1, v7

    sget-object v2, LQr;->D:LQr;

    aput-object v2, v1, v8

    sget-object v2, LQr;->E:LQr;

    aput-object v2, v1, v9

    sget-object v2, LQr;->F:LQr;

    aput-object v2, v1, v10

    sget-object v2, LQr;->G:LQr;

    aput-object v2, v1, v11

    sget-object v2, LQr;->H:LQr;

    aput-object v2, v1, v12

    sget-object v2, LQr;->I:LQr;

    aput-object v2, v1, v13

    sget-object v2, LQr;->J:LQr;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, LQr;->K:LQr;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, LQr;->L:LQr;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, LQr;->M:LQr;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, LQr;->N:LQr;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, LQr;->O:LQr;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, LQr;->P:LQr;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, LQr;->Q:LQr;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, LQr;->R:LQr;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, LQr;->S:LQr;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, LQr;->T:LQr;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, LQr;->U:LQr;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, LQr;->V:LQr;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, LQr;->W:LQr;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, LQr;->X:LQr;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, LQr;->Y:LQr;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, LQr;->Z:LQr;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, LQr;->a0:LQr;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, LQr;->b0:LQr;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, LQr;->c0:LQr;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, LQr;->d0:LQr;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, LQr;->e0:LQr;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, LQr;->f0:LQr;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, LQr;->g0:LQr;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, LQr;->h0:LQr;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, LQr;->i0:LQr;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, LQr;->j0:LQr;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, LQr;->k0:LQr;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, LQr;->l0:LQr;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, LQr;->m0:LQr;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, LQr;->n0:LQr;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, LQr;->o0:LQr;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, LQr;->p0:LQr;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, LQr;->q0:LQr;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, LQr;->r0:LQr;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, LQr;->s0:LQr;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, LQr;->t0:LQr;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, LQr;->u0:LQr;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, LQr;->v0:LQr;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, LQr;->w0:LQr;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const/16 v2, 0x34

    aput-object v0, v1, v2

    sput-object v1, LQr;->y0:[LQr;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LQr;->w:Ljava/lang/String;

    return-void
.end method

.method public static values()[LQr;
    .locals 1

    sget-object v0, LQr;->y0:[LQr;

    invoke-virtual {v0}, [LQr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQr;

    return-object v0
.end method
