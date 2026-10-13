.class public final enum Lcom/oculus/appmanager/constants/PackageManagerCodes;
.super Ljava/lang/Enum;
.source "PackageManagerCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/constants/PackageManagerCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum ALREADY_EXISTS:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum BAD_MANIFEST:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum BAD_PACKAGE_NAME:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum BAD_SHARED_USER_ID:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum CERTIFICATE_ENCODING:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum CONFLICTING_PROVIDER:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum CONTAINER_ERROR:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum CPU_ABI_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum DEXOPT:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum DUPLICATE_PACKAGE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum INCONSISTENT_CERTIFICATES:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum INSUFFICIENT_STORAGE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum INTERNAL_ERROR:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum INVALID_APK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum INVALID_INSTALL_LOCATION:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum INVALID_URI:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum MANIFEST_EMPTY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum MANIFEST_MALFORMED:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum MEDIA_UNAVAILABLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum MISSING_FEATURE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum MISSING_SHARED_LIBRARY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum NEWER_SDK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum NOT_APK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum NO_CERTIFICATES:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum NO_SHARED_USER:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum OLDER_SDK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum PACKAGE_CHANGED:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum REPLACE_COULDNT_DELETE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum SHARED_USER_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum TEST_ONLY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum UNEXPECTED_EXCEPTION:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum UPDATE_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum VERIFICATION_FAILURE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

.field public static final enum VERIFICATION_TIMEOUT:Lcom/oculus/appmanager/constants/PackageManagerCodes;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "ALREADY_EXISTS"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->ALREADY_EXISTS:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 8
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "INVALID_APK"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INVALID_APK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 9
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "INVALID_URI"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INVALID_URI:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 10
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "INSUFFICIENT_STORAGE"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INSUFFICIENT_STORAGE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 11
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "DUPLICATE_PACKAGE"

    const/4 v2, -0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->DUPLICATE_PACKAGE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 12
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "NO_SHARED_USER"

    const/4 v2, 0x5

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->NO_SHARED_USER:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 13
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "UPDATE_INCOMPATIBLE"

    const/4 v2, 0x6

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->UPDATE_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 14
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "SHARED_USER_INCOMPATIBLE"

    const/4 v2, 0x7

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->SHARED_USER_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 15
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "MISSING_SHARED_LIBRARY"

    const/16 v2, 0x8

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MISSING_SHARED_LIBRARY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 16
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "REPLACE_COULDNT_DELETE"

    const/16 v2, 0x9

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->REPLACE_COULDNT_DELETE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 17
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "DEXOPT"

    const/16 v2, 0xa

    const/16 v3, -0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->DEXOPT:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 18
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "OLDER_SDK"

    const/16 v2, 0xb

    const/16 v3, -0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->OLDER_SDK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 19
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "CONFLICTING_PROVIDER"

    const/16 v2, 0xc

    const/16 v3, -0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->CONFLICTING_PROVIDER:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 20
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "NEWER_SDK"

    const/16 v2, 0xd

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->NEWER_SDK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 21
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "TEST_ONLY"

    const/16 v2, 0xe

    const/16 v3, -0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->TEST_ONLY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 22
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "CPU_ABI_INCOMPATIBLE"

    const/16 v2, 0xf

    const/16 v3, -0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->CPU_ABI_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 23
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "MISSING_FEATURE"

    const/16 v2, 0x10

    const/16 v3, -0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MISSING_FEATURE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 24
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "CONTAINER_ERROR"

    const/16 v2, 0x11

    const/16 v3, -0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->CONTAINER_ERROR:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 25
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "INVALID_INSTALL_LOCATION"

    const/16 v2, 0x12

    const/16 v3, -0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INVALID_INSTALL_LOCATION:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 26
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "MEDIA_UNAVAILABLE"

    const/16 v2, 0x13

    const/16 v3, -0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MEDIA_UNAVAILABLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 27
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "VERIFICATION_TIMEOUT"

    const/16 v2, 0x14

    const/16 v3, -0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->VERIFICATION_TIMEOUT:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 28
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "VERIFICATION_FAILURE"

    const/16 v2, 0x15

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->VERIFICATION_FAILURE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 29
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "PACKAGE_CHANGED"

    const/16 v2, 0x16

    const/16 v3, -0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->PACKAGE_CHANGED:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 30
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "NOT_APK"

    const/16 v2, 0x17

    const/16 v3, -0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->NOT_APK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 31
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "BAD_MANIFEST"

    const/16 v2, 0x18

    const/16 v3, -0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->BAD_MANIFEST:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 32
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "UNEXPECTED_EXCEPTION"

    const/16 v2, 0x19

    const/16 v3, -0x66

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->UNEXPECTED_EXCEPTION:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 33
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "NO_CERTIFICATES"

    const/16 v2, 0x1a

    const/16 v3, -0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->NO_CERTIFICATES:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 34
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "INCONSISTENT_CERTIFICATES"

    const/16 v2, 0x1b

    const/16 v3, -0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INCONSISTENT_CERTIFICATES:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 35
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "CERTIFICATE_ENCODING"

    const/16 v2, 0x1c

    const/16 v3, -0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->CERTIFICATE_ENCODING:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 36
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "BAD_PACKAGE_NAME"

    const/16 v2, 0x1d

    const/16 v3, -0x6a

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->BAD_PACKAGE_NAME:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 37
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "BAD_SHARED_USER_ID"

    const/16 v2, 0x1e

    const/16 v3, -0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->BAD_SHARED_USER_ID:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 38
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "MANIFEST_MALFORMED"

    const/16 v2, 0x1f

    const/16 v3, -0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MANIFEST_MALFORMED:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 39
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "MANIFEST_EMPTY"

    const/16 v2, 0x20

    const/16 v3, -0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MANIFEST_EMPTY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 40
    new-instance v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0x21

    const/16 v3, -0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageManagerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INTERNAL_ERROR:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    .line 6
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/oculus/appmanager/constants/PackageManagerCodes;

    sget-object v1, Lcom/oculus/appmanager/constants/PackageManagerCodes;->ALREADY_EXISTS:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INVALID_APK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INVALID_URI:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INSUFFICIENT_STORAGE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/constants/PackageManagerCodes;->DUPLICATE_PACKAGE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->NO_SHARED_USER:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->UPDATE_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->SHARED_USER_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MISSING_SHARED_LIBRARY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->REPLACE_COULDNT_DELETE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->DEXOPT:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->OLDER_SDK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->CONFLICTING_PROVIDER:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->NEWER_SDK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->TEST_ONLY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->CPU_ABI_INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MISSING_FEATURE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->CONTAINER_ERROR:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INVALID_INSTALL_LOCATION:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MEDIA_UNAVAILABLE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->VERIFICATION_TIMEOUT:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->VERIFICATION_FAILURE:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->PACKAGE_CHANGED:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->NOT_APK:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->BAD_MANIFEST:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->UNEXPECTED_EXCEPTION:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->NO_CERTIFICATES:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INCONSISTENT_CERTIFICATES:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->CERTIFICATE_ENCODING:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->BAD_PACKAGE_NAME:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->BAD_SHARED_USER_ID:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MANIFEST_MALFORMED:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->MANIFEST_EMPTY:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/oculus/appmanager/constants/PackageManagerCodes;->INTERNAL_ERROR:Lcom/oculus/appmanager/constants/PackageManagerCodes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->$VALUES:[Lcom/oculus/appmanager/constants/PackageManagerCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->code:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/constants/PackageManagerCodes;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/constants/PackageManagerCodes;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/appmanager/constants/PackageManagerCodes;->$VALUES:[Lcom/oculus/appmanager/constants/PackageManagerCodes;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/constants/PackageManagerCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/constants/PackageManagerCodes;

    return-object v0
.end method
