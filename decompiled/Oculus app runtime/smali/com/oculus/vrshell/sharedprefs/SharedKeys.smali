.class public interface abstract Lcom/oculus/vrshell/sharedprefs/SharedKeys;
.super Ljava/lang/Object;
.source "SharedKeys.java"


# static fields
.field public static final FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final SETTINGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 16
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "settings/"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->SETTINGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 18
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "flags/"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-void
.end method
