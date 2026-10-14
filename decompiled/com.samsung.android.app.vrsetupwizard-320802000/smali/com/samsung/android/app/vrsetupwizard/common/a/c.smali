.class public Lcom/samsung/android/app/vrsetupwizard/common/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final A:Ljava/lang/reflect/Field;

.field private static final B:Ljava/lang/reflect/Field;

.field private static final C:Ljava/lang/reflect/Field;

.field private static final D:Ljava/lang/reflect/Field;

.field private static final E:Ljava/lang/reflect/Field;

.field private static final F:Ljava/lang/reflect/Field;

.field private static final G:Ljava/lang/reflect/Field;

.field private static final H:Ljava/lang/reflect/Method;

.field private static final I:Ljava/lang/reflect/Method;

.field private static final J:Ljava/lang/reflect/Method;

.field private static final K:Ljava/lang/reflect/Method;

.field private static final L:Ljava/lang/reflect/Method;

.field private static final M:Ljava/lang/reflect/Method;

.field private static final N:Ljava/lang/reflect/Method;

.field private static final O:Ljava/lang/reflect/Method;

.field public static final a:Ljava/lang/String;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:I

.field public static final s:I

.field private static final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final u:Ljava/lang/reflect/Field;

.field private static final v:Ljava/lang/reflect/Field;

.field private static final w:Ljava/lang/reflect/Field;

.field private static final x:Ljava/lang/reflect/Field;

.field private static final y:Ljava/lang/reflect/Field;

.field private static final z:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "EXTRA_REASON"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->u:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "UNBOND_REASON_AUTH_FAILED"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->v:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "PAIRING_VARIANT_PASSKEY"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->w:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "PAIRING_VARIANT_CONSENT"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->x:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "PAIRING_VARIANT_OOB_CONSENT"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->y:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "PAIRING_VARIANT_DISPLAY_PASSKEY"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->z:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "PAIRING_VARIANT_DISPLAY_PIN"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->A:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "EXTRA_APPEARANCE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->B:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "EXTRA_GEARMANAGER_NAME"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->C:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "ACTION_DISAPPEARED"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->D:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "ACTION_PAIRING_CANCEL"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->E:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "UNBOND_REASON_REMOVED"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->F:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const-string v1, "BOND_SUCCESS"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->G:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "convertPinToBytes"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->H:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-string v3, "setPasskey"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->I:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "setRemoteOutOfBandData"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->J:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v4

    const-string v3, "setPin"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->K:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-string v3, "setPairingConfirmation"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->L:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "removeBond"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->M:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "setAlias"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->N:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->t:Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    const-string v2, "cancelPairingUserInput"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->O:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->u:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->v:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->b:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->v:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->c:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->v:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->d:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->v:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->e:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->v:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->f:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->v:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->g:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->v:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->h:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->w:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->i:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->x:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->j:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->y:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->k:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->z:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->l:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->A:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->m:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->B:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->n:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->C:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->o:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->D:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->p:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->E:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->q:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->F:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->r:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->G:Ljava/lang/reflect/Field;

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->s:I

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/c;->M:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
