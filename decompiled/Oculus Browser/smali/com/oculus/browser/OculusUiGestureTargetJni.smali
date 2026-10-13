.class public final Lcom/oculus/browser/OculusUiGestureTargetJni;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/OculusUiGestureTarget$Natives;


# static fields
.field public static final TEST_HOOKS:LJT;

.field public static testInstance:Lcom/oculus/browser/OculusUiGestureTarget$Natives;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/OculusUiGestureTargetJni$1;

    invoke-direct {v0}, Lcom/oculus/browser/OculusUiGestureTargetJni$1;-><init>()V

    sput-object v0, Lcom/oculus/browser/OculusUiGestureTargetJni;->TEST_HOOKS:LJT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/oculus/browser/OculusUiGestureTarget$Natives;)Lcom/oculus/browser/OculusUiGestureTarget$Natives;
    .locals 0

    .line 1
    sput-object p0, Lcom/oculus/browser/OculusUiGestureTargetJni;->testInstance:Lcom/oculus/browser/OculusUiGestureTarget$Natives;

    return-object p0
.end method

.method public static get()Lcom/oculus/browser/OculusUiGestureTarget$Natives;
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/OculusUiGestureTargetJni;

    invoke-direct {v0}, Lcom/oculus/browser/OculusUiGestureTargetJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(Lcom/oculus/browser/OculusUiGestureTarget;FFI)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, LJ/N;->Mh57D7wO(Ljava/lang/Object;FFI)J

    move-result-wide p1

    return-wide p1
.end method
