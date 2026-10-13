.class public final Lcom/oculus/auth/service/contract/ServiceContract;
.super Ljava/lang/Object;
.source "ServiceContract.java"


# static fields
.field public static final ACTION_FB_CHECK_MACHINE_APPROVAL:Ljava/lang/String; = "com.oculus.auth.ACTION_FB_CHECK_MACHINE_APPROVAL"

.field public static final ACTION_FB_LOGIN:Ljava/lang/String; = "com.oculus.auth.ACTION_FB_LOGIN"

.field public static final ACTION_FB_MACHINE_APPROVAL_LOGIN:Ljava/lang/String; = "com.oculus.auth.ACTION_FB_MACHINE_APPROVAL_LOGIN"

.field public static final ACTION_FB_RESEND_SMS:Ljava/lang/String; = "com.oculus.auth.ACTION_FB_RESEND_SMS"

.field public static final ACTION_FB_VERIFY_LOGIN_APPROVALS_CODE:Ljava/lang/String; = "com.oculus.auth.ACTION_FB_VERIFY_LOGIN_APPROVALS_CODE"

.field public static final ACTION_FETCH_TWO_FACTOR_METHODS:Ljava/lang/String; = "com.oculus.auth.ACTION_FETCH_TWO_FACTOR_METHODS"

.field public static final ACTION_LINK_FB_ACCOUNT:Ljava/lang/String; = "com.oculus.auth.ACTION_LINK_FB_ACCOUNT"

.field public static final ACTION_LOGIN:Ljava/lang/String; = "com.oculus.auth.ACTION_LOGIN"

.field public static final ACTION_LOGIN_API:Ljava/lang/String; = "com.oculus.auth.ACTION_LOGIN_API"

.field public static final ACTION_LOGIN_WITH_FB_AUTH:Ljava/lang/String; = "com.oculus.auth.ACTION_LOGIN_WITH_FB_AUTH"

.field public static final ACTION_LOGOUT:Ljava/lang/String; = "com.oculus.auth.ACTION_LOGOUT"

.field public static final ACTION_RESEND_LOGIN_APPROVAL_CODE:Ljava/lang/String; = "com.oculus.auth.ACTION_RESEND_LOGIN_APPROVAL_CODE"

.field public static final ACTION_SEND_TWO_FACTOR_CODE:Ljava/lang/String; = "com.oculus.auth.ACTION_SEND_TWO_FACTOR_CODE"

.field public static final ACTION_STATUS:Ljava/lang/String; = "com.oculus.auth.ACTION_STATUS"

.field public static final ACTION_VERIFY_LOGIN:Ljava/lang/String; = "com.oculus.auth.ACTION_VERIFY_LOGIN"

.field public static final ACTION_VERIFY_PIN:Ljava/lang/String; = "com.oculus.auth.ACTION_VERIFY_PIN"

.field public static final BOUND_SERVICE:Ljava/lang/String; = "com.oculus.auth.service.AuthService2"

.field public static final BROADCAST_LOGIN:Ljava/lang/String; = "com.oculus.auth.BROADCAST_LOGIN"

.field public static final BROADCAST_LOGOUT:Ljava/lang/String; = "com.oculus.auth.BROADCAST_LOGOUT"

.field public static final ERROR_CODE_ANOMALOUS_LOGIN:I = -0x2

.field public static final ERROR_CODE_DEVICE_ALREADY_CLAIMED:I = -0xe

.field public static final ERROR_CODE_HTTP_ERROR:I = -0x6

.field public static final ERROR_CODE_INVALID_CREDS:I = -0x1

.field public static final ERROR_CODE_INVALID_PARAMS:I = -0xc

.field public static final ERROR_CODE_LIMITED_LOGIN:I = -0x3

.field public static final ERROR_CODE_LOGIN_APPROVALS_INVALID_CODE:I = -0xa

.field public static final ERROR_CODE_LOGIN_APPROVALS_NOT_IN_CHECKPOINT:I = -0x9

.field public static final ERROR_CODE_LOGIN_APPROVALS_RATE_LIMITED:I = -0xb

.field public static final ERROR_CODE_NETWORK_ERROR:I = -0x4

.field public static final ERROR_CODE_NO_LINKED_ACCOUNT:I = -0xd

.field public static final ERROR_CODE_RATE_LIMITED:I = -0x5

.field public static final ERROR_CODE_TWO_FACTOR_LOGIN_REQUIRED:I = -0x8

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = -0x7

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final EXTRA_ALL_EMAILS:Ljava/lang/String; = "all_emails"

.field public static final EXTRA_AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "email"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "error_message"

.field public static final EXTRA_ERROR_TITLE:Ljava/lang/String; = "error_title"

.field public static final EXTRA_ERROR_USER_MESSAGE:Ljava/lang/String; = "error_data"

.field public static final EXTRA_EXISTING_EMAIL_CONFLICT:Ljava/lang/String; = "existing_email_conflict"

.field public static final EXTRA_FB_ACCESS_TOKEN:Ljava/lang/String; = "fb_access_token"

.field public static final EXTRA_FB_USER_ID:Ljava/lang/String; = "fb_user_id"

.field public static final EXTRA_FIRST_FACTOR:Ljava/lang/String; = "first_factor"

.field public static final EXTRA_FOLLOW_UP:Ljava/lang/String; = "follow_up"

.field public static final EXTRA_IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final EXTRA_IS_SECURED_ACTION:Ljava/lang/String; = "secured_action"

.field public static final EXTRA_LOGIN_FIRST_FACTOR:Ljava/lang/String; = "login_first_factor"

.field public static final EXTRA_LOGOUT_WITHOUT_SERVER:Ljava/lang/String; = "logout_no_server"

.field public static final EXTRA_MACHINE_APPROVED:Ljava/lang/String; = "machine_approved"

.field public static final EXTRA_MACHINE_ID:Ljava/lang/String; = "machine_id"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_NONCE:Ljava/lang/String; = "nonce"

.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_PIN:Ljava/lang/String; = "pin"

.field public static final EXTRA_PROFILE_PIC_URI:Ljava/lang/String; = "profile_pic_uri"

.field public static final EXTRA_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "sessionKey"

.field public static final EXTRA_SUPPORT_URI:Ljava/lang/String; = "support_uri"

.field public static final EXTRA_TWO_FACTOR_METHODS:Ljava/lang/String; = "two_factor_methods"

.field public static final EXTRA_TWO_FACTOR_METHOD_ID:Ljava/lang/String; = "two_factor_method_id"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_USERNAME_SUGGESTIONS:Ljava/lang/String; = "username_suggestions"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field public static final FOLLOW_UP_LINK:Ljava/lang/String; = "link"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field public static final SUCCESS_CODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
