.class Lcom/oculus/modules/MessengerModule$MessageTypes;
.super Ljava/lang/Object;
.source "MessengerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/MessengerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageTypes"
.end annotation


# static fields
.field private static final ADD_PARTICIPANTS_TO_THREAD:I = 0x6

.field private static final CREATE_GROUP_THREAD:I = 0x7

.field private static final DELETE_THREAD:I = 0xe

.field private static final ERROR:I = -0x1

.field private static final GET_MESSAGES:I = 0x3

.field private static final GET_NON_INBOX_MESSAGES:I = 0x12

.field private static final GET_NON_INBOX_THREADS:I = 0x11

.field private static final GET_THREAD:I = 0xc

.field private static final GET_THREADS:I = 0x2

.field private static final GET_UNREAD_THREAD_COUNTS:I = 0x13

.field private static final HIDE_THREAD:I = 0x10

.field private static final INIT:I = 0x1

.field private static final MARK_THREAD_READ:I = 0x8

.field private static final MUTE_THREAD:I = 0x9

.field private static final NEW_MESSAGE_CALLBACK:I = 0x4

.field private static final REMOVE_PARTICIPANT_FROM_THREAD:I = 0xa

.field private static final RETRY_SENDING_MESSAGE:I = 0xd

.field private static final SEND_MESSAGE:I = 0xb

.field private static final THREAD_DELETION_CALLBACK:I = 0xf

.field private static final THREAD_UPDATE_CALLBACK:I = 0x5

.field private static final UNREAD_THREAD_COUNTS_UPDATE_CALLBACK:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
